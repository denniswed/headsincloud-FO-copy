async function fetchQuestions() {
    const questionListTable = document.querySelector('#question-list');

    const response = await fetch('https://uhgwqthcj3.execute-api.us-east-1.amazonaws.com/CFStage/questions');
    const json = await response.json();

    json.body.forEach(q => {

        let hasAcceptedAnswer = false;
        if (q.answer) {
            hasAcceptedAnswer = q.answer.some(answer => answer.accepted);
        } else {
            q.answer = [];
        }
        const newRow = createQuestionRow(q.question_id,
                                         q.question_summary,
                                         q.question_detail,
                                         q.answer.length,
                                         hasAcceptedAnswer);
        questionListTable.appendChild(newRow);
    });

    const loadingDiv = document.querySelector('#loading');
    loadingDiv.style.display = 'none';

    // Remove the example icons
    const answerIconExample = document.querySelector('#answer-icon-example');
    answerIconExample.parentNode.removeChild(answerIconExample);

    const acceptedIconExample = document.querySelector('#accepted-icon-example');
    acceptedIconExample.parentNode.removeChild(acceptedIconExample);
}


function createQuestionRow(questionId, questionSummary, questionDetail, answerCount, hasAcceptedAnswer) {
    const row = document.createElement('tr');

    const data = document.createElement('td');
    row.appendChild(data);

    const dataContainer = document.createElement('div');
    dataContainer.className = 'grid-container';
    data.appendChild(dataContainer);

    const summaryRow = document.createElement('div');
    summaryRow.className = 'grid-row';
    dataContainer.appendChild(summaryRow);

    const summaryCol = document.createElement('div');
    summaryCol.className = 'grid-col-10';
    summaryRow.appendChild(summaryCol);

    const questionIconsCol = document.createElement('div');
    questionIconsCol.className = 'grid-col-2 text-middle';
    summaryRow.appendChild(questionIconsCol);

    questionIconsCol.appendChild(createQuestionIcons(answerCount, hasAcceptedAnswer));

    const summaryHeading = document.createElement('h3');
    summaryHeading.className = 'margin-top-0';
    summaryCol.appendChild(summaryHeading);

    const newHref = document.createElement('a');
    newHref.className = 'usa-link';
    newHref.href = 'question-detail.html';
    newHref.onclick = () => clickQuestion(questionId);
    summaryHeading.appendChild(newHref);

    if (questionDetail.length > 200) {
        questionDetail = questionDetail.substr(0, 202);
        questionDetail += ' ...';
    }

    const linkText = document.createTextNode(questionSummary);
    newHref.appendChild(linkText);

    const detailRow = document.createElement('div');
    detailRow.className = 'grid-row';
    dataContainer.appendChild(detailRow);

    const detailCol = document.createElement('div');
    detailCol.className = 'grid-col-10';
    detailRow.appendChild(detailCol);

    const detailText = document.createTextNode(questionDetail);
    detailCol.appendChild(detailText);

    return row;
}


function createQuestionIcons(answerCount, hasAcceptedAnswer) {
    const iconsSpan = document.createElement('span');
    iconsSpan.className = 'margin-left-1';

    const answerIconExample = document.querySelector('#answer-icon-example');
    const answerIconClone = answerIconExample.cloneNode(true);
    answerIconClone.id = '';
    iconsSpan.appendChild(answerIconClone);

    const answerCountText = document.createTextNode(answerCount);
    iconsSpan.appendChild(answerCountText);

    if (hasAcceptedAnswer) {
        const acceptedIconExample = document.querySelector('#accepted-icon-example');
        const acceptedIconClone = acceptedIconExample.cloneNode(true);
        acceptedIconClone.id = '';
        iconsSpan.appendChild(acceptedIconClone);
    }

    return iconsSpan;
}


function clickQuestion(questionId) {
    localStorage.setItem('questionId', questionId);
}


async function fetchSingleQuestion() {
    const questionId = localStorage.getItem('questionId');

    const response = await fetch('https://uhgwqthcj3.execute-api.us-east-1.amazonaws.com/CFStage/questions');
    const json = await response.json();
    const question = json.body.find(q => q.question_id === questionId);

    const questionDiv = document.querySelector('#question-detail');
    const questionCard = createQuestionCard(question.question_summary,
                                            question.question_detail,
                                            questionId);
    questionDiv.appendChild(questionCard);

    const questionIdHiddenInput = document.querySelector('#question_id');
    questionIdHiddenInput.value = questionId;

    const answersDiv = document.querySelector('#answer-list');
    if (question.answer) {
        const answersSection = document.querySelector('#answer-section');
        answersSection.style.display = 'block';

        const hasAcceptedAnswer = question.answer.some(answer => answer.accepted);

        sortAnswers(question.answer).forEach(answer => {
            const answerCard = createAnswerCard(questionId,
                                                answer.id,
                                                answer.answerText,
                                                answer.score,
                                                hasAcceptedAnswer,
                                                answer.accepted);
            answersDiv.appendChild(answerCard);
        });
    }

    const answerButtonsDiv = document.querySelector('#answer-buttons');
    answerButtonsDiv.style.display = 'block';

    const loadingDiv = document.querySelector('#loading');
    loadingDiv.style.display = 'none';

    // Remove the example icons/buttons that were used to copy
    const upvoteButtonExample = document.querySelector('#upvote-button-example');
    upvoteButtonExample.parentNode.removeChild(upvoteButtonExample);

    const acceptButtonExample = document.querySelector('#accept-answer-button-example');
    acceptButtonExample.parentNode.removeChild(acceptButtonExample);

    const acceptedIconExample = document.querySelector('#accepted-icon-example');
    acceptedIconExample.parentNode.removeChild(acceptedIconExample);
}


function sortAnswers(answers) {
    const sortedAnswers = [];

    // Find an accepted answer
    const acceptedAnswer = answers.find(answer => answer.accepted);
    if (acceptedAnswer) {
        sortedAnswers.push(acceptedAnswer);
    }

    // Sort the non-accepted answers by score
    const nonAcceptedAnswers = answers.filter(answer => !answer.accepted);
    const soredNonAcceptedAnswers = nonAcceptedAnswers.sort(
        (firstAnswer, secondAnswer) => secondAnswer.score - firstAnswer.score
    );

    return sortedAnswers.concat(soredNonAcceptedAnswers);
}


function createQuestionCard(summary, detail, questionId) {
    const card = document.createElement('div');
    card.className = 'usa-card';

    const cardContainer = document.createElement('div');
    cardContainer.className = 'usa-card__container bg-accent-cool-lighter';

    card.appendChild(cardContainer);

    const cardHeader = document.createElement('header');
    cardHeader.className = 'usa-card__header';
    cardContainer.appendChild(cardHeader);

    const cardHeading = document.createElement('h2');
    cardHeading.className = 'usa-card__heading';
    cardHeader.appendChild(cardHeading);

    const cardHeaderText = document.createTextNode(summary);
    cardHeading.appendChild(cardHeaderText);

    const cardBody = document.createElement('div');
    cardBody.className = 'usa-card__body';
    cardContainer.appendChild(cardBody);

    const cardBodyP = document.createElement('p');
    cardBody.appendChild(cardBodyP);

    const cardBodyText = document.createTextNode(detail);
    cardBodyP.appendChild(cardBodyText);

    const cardFooter = document.createElement('div');
    cardFooter.className = 'usa-card__footer';
    cardContainer.appendChild(cardFooter);

    const deleteButton = document.createElement('button');
    deleteButton.className = 'usa-button usa-button--secondary';
    deleteButton.onclick = () => deleteQuestion(questionId);
    cardFooter.appendChild(deleteButton);

    const deleteButtonText = document.createTextNode('Delete question');
    deleteButton.appendChild(deleteButtonText);

    return card;
}


async function deleteQuestion(questionId) {
    const response = await fetch(
        'https://rkb7e4iex0.execute-api.us-east-1.amazonaws.com/deletequestion',
        {
            method: 'post',
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                'question_id': questionId
            })
        }
    );

    if (response.ok) {
        navigateToIndex();
    }
}


function createAnswerCard(questionId, answerId, answerText, score, hasAcceptedAnswer, isAccepted) {
    const card = document.createElement('div');
    card.className = 'usa-card';

    const cardContainer = document.createElement('div');
    cardContainer.className = 'usa-card__container';
    if (isAccepted) {
        cardContainer.classList.add('bg-accent-cool-lighter')
    } else {
        cardContainer.classList.add('bg-base-lightest');
    }
    card.appendChild(cardContainer);

    const cardBody = document.createElement('div');
    cardBody.className = 'usa-card__body';
    cardContainer.appendChild(cardBody);

    const cardBodyContainer = document.createElement('div');
    cardBodyContainer.className = 'grid-container';
    cardBody.appendChild(cardBodyContainer);

    const answerSectionRow = document.createElement('div');
    answerSectionRow.className = 'grid-row';
    cardBodyContainer.appendChild(answerSectionRow);

    const answerSectionCol = document.createElement('div');
    answerSectionCol.className = 'grid-col';
    answerSectionRow.appendChild(answerSectionCol);

    const answerP = document.createElement('p');
    answerSectionCol.appendChild(answerP);

    const answerBodyText = document.createTextNode(answerText);
    answerP.appendChild(answerBodyText);

    const scoreSectionRow = document.createElement('div');
    scoreSectionRow.className = 'grid-row margin-top-1';
    cardBodyContainer.appendChild(scoreSectionRow);

    const scoreSectionCol = document.createElement('div');
    scoreSectionCol.className = 'grid-col';
    scoreSectionRow.appendChild(scoreSectionCol);

    if (!hasAcceptedAnswer) {
        const acceptAnswerExampleButton = document.querySelector('#accept-answer-button-example');
        const acceptAnswerButtonClone = acceptAnswerExampleButton.cloneNode(true);
        acceptAnswerButtonClone.id = '';
        acceptAnswerButtonClone.onclick = () => acceptAnswer(questionId, answerId);
        scoreSectionCol.appendChild(acceptAnswerButtonClone);
    }
    if (isAccepted) {
        const acceptedIconExample = document.querySelector('#accepted-icon-example');
        const acceptedIconClone = acceptedIconExample.cloneNode(true);
        acceptedIconClone.id = '';
        scoreSectionCol.appendChild(acceptedIconClone);
    }

    const scoreSpan = document.createElement('span');
    scoreSectionCol.appendChild(scoreSpan);

    const scoreText = document.createTextNode(score);
    scoreSpan.appendChild(scoreText);

    const upvoteExampleButton = document.querySelector('#upvote-button-example');
    const upvoteButtonClone = upvoteExampleButton.cloneNode(true);
    upvoteButtonClone.id = '';
    upvoteButtonClone.onclick = () => voteOnAnswer(questionId, answerId)
    scoreSectionCol.appendChild(upvoteButtonClone);

    return card;
}


async function acceptAnswer(questionId, answerId) {
    const response = await fetch(
        'https://rkb7e4iex0.execute-api.us-east-1.amazonaws.com/acceptanswer',
        {
            method: 'post',
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                'question_id': questionId,
                'answer_id': answerId
            })
        }
    );

    if (response.ok) {
        location.reload();
    }
}


async function voteOnAnswer(questionId, answerId) {
    const response = await fetch(
        'https://rkb7e4iex0.execute-api.us-east-1.amazonaws.com/upvoteanswer',
        {
            method: 'post',
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                'question_id': questionId,
                'answer_id': answerId
            })
        }
    );

    if (response.ok) {
        location.reload();
    }
}


function questionFormValid() {
    const form = document.querySelector('#question-form');
    let valid = true;

    if (!form.question_summary.value) {
        const questionSummaryGroup = document.querySelector('#question_summary-group');
        questionSummaryGroup.classList.add('usa-form-group--error');
        const questionSummaryLabel = document.querySelector('#question_summary-label');
        questionSummaryLabel.classList.add('usa-label--error');
        const questionSummaryErrorDiv = document.querySelector('#question_summary-error-message');
        questionSummaryErrorDiv.style.display = 'block';
        const questionSummaryInput = document.querySelector('#question_summary');
        questionSummaryInput.classList.add('usa-input--error');
        valid = false
    }

    if (!form.question_detail.value) {
        const questionDetailGroup = document.querySelector('#question_detail-group');
        questionDetailGroup.classList.add('usa-form-group--error');
        const questionDetailLabel = document.querySelector('#question_detail-label');
        questionDetailLabel.classList.add('usa-label--error');
        const questionDetailErrorDiv = document.querySelector('#question_detail-error-message');
        questionDetailErrorDiv.style.display = 'block';
        const questionDetailInput = document.querySelector('#question_detail');
        questionDetailInput.classList.add('usa-input--error');
        valid = false;
    }

    return valid;
}


async function submitQuestion() {
    const form = document.querySelector('#question-form');

    if (questionFormValid()) {
        const response = await fetch(
            'https://rkb7e4iex0.execute-api.us-east-1.amazonaws.com/AddQuestionFunction',
            {
                method: 'post',
                headers: {
                    'Accept': 'application/json',
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({
                    'question_summary': form.question_summary.value,
                    'question_detail': form.question_detail.value
                })
            }
        );

        if (!response.ok) {
            const errorDiv = document.querySelector('#add-question-error');
            errorDiv.style.display = 'block';

            setTimeout(() => errorDiv.style.display = 'none', 5000);
        } else {
            navigateToIndex();
        }
    }
}


function answerFormValid() {
    const form = document.querySelector('#answer-form');
    let valid = true;

    if (!form.answer.value) {
        const answerGroup = document.querySelector('#answer-group');
        answerGroup.classList.add('usa-form-group--error');
        const answerLabel = document.querySelector('#answer-label');
        answerLabel.classList.add('usa-label--error');
        const answerErrorDiv = document.querySelector('#answer-error-message');
        answerErrorDiv.style.display = 'block';
        const answerInput = document.querySelector('#answer');
        answerInput.classList.add('usa-input--error');
        valid = false
    }

    return valid;
}


async function answerQuestion() {
    const form = document.querySelector('#answer-form');

    if (answerFormValid()) {
        const response = await fetch(
            'https://rkb7e4iex0.execute-api.us-east-1.amazonaws.com/AddAnswerFunction',
            {
                method: 'post',
                headers: {
                    'Accept': 'application/json',
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({
                    'question_id': form.question_id.value,
                    'answer': form.answer.value
                })
            }
        );

        if (!response.ok) {
            const errorDiv = document.querySelector('#add-answer-error');
            errorDiv.style.display = 'block';

            setTimeout(() => errorDiv.style.display = 'none', 5000);
        } else {
            location.reload();
        }
    }
}


function navigateToAsk() {
    window.location.href = 'ask-question.html';
}


function navigateToIndex() {
    window.location.href = 'index.html';
}


function toggleAnswerForm() {
    const answerForm = document.querySelector('#answer-form-section');
    const toggleAnswerButton = document.querySelector('#toggle-answer-button');
    if (answerForm.style.display === 'none') {
        answerForm.style.display = 'block';
        toggleAnswerButton.style.display = 'none';
    } else {
        answerForm.style.display = 'none';
        toggleAnswerButton.style.display = 'block';
    }
}
