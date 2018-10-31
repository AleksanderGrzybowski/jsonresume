var page = require('webpage').create();

page.viewportSize = {width: 800, height: 1131};
page.open('file:///jsonresume/resume.html', function () {
    page.render('out.pdf');
    phantom.exit();
});
