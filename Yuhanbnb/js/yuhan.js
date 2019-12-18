    function Score(score) {
            if (score > 9) {
        document.write('<a href="#"><i class="fas fa-star"></i></a><a href="#"><i class="fas fa-star"></i></a><a href="#"><i class="fas fa-star"></i></a><a href="#"><i class="fas fa-star"></i></a><a href="#"><i class="fas fa-star"></i></a>');
    }
            else if (score > 8) {
        document.write('<a href="#"><i class="fas fa-star"></i></a><a href="#"><i class="fas fa-star"></i></a><a href="#"><i class="fas fa-star"></i></a><a href="#"><i class="fas fa-star"></i></a><a href="#"><i class="fas fa-star-half-alt"></i></a>');
    }

            else if (score > 7) {
        document.write('<a href="#"><i class="fas fa-star"></i></a><a href="#"><i class="fas fa-star"></i></a><a href="#"><i class="fas fa-star"></i></a><a href="#"><i class="fas fa-star"></i></a><a href="#"><i class="far fa-star"></i></a>');
    }
            else if (score > 6) {
        document.write('<a href="#"><i class="fas fa-star"></i></a><a href="#"><i class="fas fa-star"></i></a><a href="#"><i class="fas fa-star"></i></a><a href="#"><i class="fas fa-star-half-alt"></i></a><a href="#"><i class="far fa-star"></i></a>');
    }
            else if (score > 5) {
        document.write('<a href="#"><i class="fas fa-star"></i></a><a href="#"><i class="fas fa-star"></i></a><a href="#"><i class="fas fa-star"></i></a><a href="#"><i class="far fa-star"></i></a><a href="#"><i class="far fa-star"></i></a>');
    }
            else if (score > 4) {
        document.write('<a href="#"><i class="fas fa-star"></i></a><a href="#"><i class="fas fa-star"></i></a><a href="#"><i class="fas fa-star-half-alt"></i></a><a href="#"><i class="far fa-star"></i></a><a href="#"><i class="far fa-star"></i></a>');
    }
            else if (score > 3) {
        document.write('<a href="#"><i class="fas fa-star"></i></a><a href="#"><i class="fas fa-star"></i></a><a href="#"><i class="far fa-star"></i></a><a href="#"><i class="far fa-star"></i></a><a href="#"><i class="far fa-star"></i></a>');
    }
            else if (score > 2) {
        document.write('<a href="#"><i class="fas fa-star"></i></a><a href="#"><i class="fas fa-star-half-alt"></i></a><a href="#"><i class="far fa-star"></i></a><a href="#"><i class="far fa-star"></i></a><a href="#"><i class="far fa-star"></i></a>');
    }
            else if (score > 1) {
        document.write('<a href="#"><i class="fas fa-star"></i></a><a href="#"><i class="far fa-star"></i></a><a href="#"><i class="far fa-star"></i></a><a href="#"><i class="far fa-star"></i></a><a href="#"><i class="far fa-star"></i></a>');
    }
            else if (score > 0) {
        document.write('<a href="#"><i class="fas fa-star-half-alt"></i></a><a href="#"><i class="far fa-star"></i></a><a href="#"><i class="far fa-star"></i></a><a href="#"><i class="far fa-star"></i></a><a href="#"><i class="far fa-star"></i></a>');
    }
            else {
        document.write("등록된 평점이 없습니다.");
    }
}