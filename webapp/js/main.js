// Search Form Handling
document.getElementById('searchForm')?.addEventListener('submit', function(e) {
    e.preventDefault();
    const subject = this.querySelector('input[type="text"]').value;
    alert(`Searching for tutors in: ${subject}`);
    // AJAX call would go here
});

// Rating System
document.querySelectorAll('.rating-star').forEach(star => {
    star.addEventListener('click', function() {
        const rating = this.dataset.rating;
        console.log(`Rating selected: ${rating}`);
        // Send rating to server
    });
});

// Form submission handler
document.querySelector('form').addEventListener('submit', function(e) {
    e.preventDefault();
    alert('Form submitted!');
    // Add AJAX call here later
  });