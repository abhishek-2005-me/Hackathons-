document.getElementById('voting-form').addEventListener('submit', function (event) {
    event.preventDefault();

    // Get voter ID and selected candidate
    const voterId = document.getElementById('voter-id').value;
    const candidate = document.querySelector('input[name="candidate"]:checked').value;

    if (voterId && candidate) {
        alert(Vote submitted!\nVoter ID: ${voterId}\nCandidate: ${candidate});

        // Simulate sending vote to blockchain
        // In a real application, this would send a transaction to a smart contract
        console.log(Recording vote for Voter ID: ${voterId}, Candidate: ${candidate});
    }
});