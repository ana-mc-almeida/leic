// Run this script in the console to remove the answers

(function() {
    'use strict';

    var imagesToReplace = document.querySelectorAll('img[src="/images/radioButtonSelected.gif"], img[src="/images/radioButtonUnselected.gif"], input[type="radio"]:checked');
    imagesToReplace.forEach(function(img) {
        var newRadioButton = document.createElement('input');
        newRadioButton.type = 'radio';
        newRadioButton.name = img.alt;
        newRadioButton.value = '1';
        newRadioButton.disabled = true;

        img.parentNode.replaceChild(newRadioButton, img);
    });

    var imagesToRemove = document.querySelectorAll('img[src="/images/correct.gif"], img[src="/images/incorrect.gif"]');
    imagesToRemove.forEach(function(img) {
        img.remove();
    });
})();