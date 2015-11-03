CKEDITOR.editorConfig = function (config) {

    config.extraPlugins = 'popup,uploadimage,image,image2,uploadwidget,widget,' +
        'lineutils,clipboard,dialog,dialogui,filetools,notificationaggregator,notification,toolbar,button';


    //
    //
    //
    //config.extraPlugins = 'uploadwidget';
    //
    //config.extraPlugins = 'widget';
    //config.extraPlugins = 'lineutils';
    //config.extraPlugins = 'clipboard';
    //config.extraPlugins = 'dialog';
    //config.extraPlugins = 'dialogui';
    //config.extraPlugins = 'filetools';
    //config.extraPlugins = 'notificationaggregator';
    //config.extraPlugins = 'notification';
    //config.extraPlugins = 'toolbar';
    //config.extraPlugins = 'button';


    config.filebrowserBrowseUrl = "/ckeditor/attachment_files";
    config.filebrowserFlashBrowseUrl = "/ckeditor/attachment_files";
    config.filebrowserFlashUploadUrl = "/ckeditor/attachment_files";
    config.filebrowserImageBrowseLinkUrl = "/ckeditor/pictures";
    config.filebrowserImageBrowseUrl = "/ckeditor/pictures";
    config.filebrowserImageUploadUrl = "/ckeditor/pictures";
    config.filebrowserUploadUrl = "/ckeditor/attachment_files";

    config.uploadUrl = "/ckeditor/attachment_files";
    config.imageUploadUrl = "/ckeditor/pictures?responseType=json";

    config.toolbarGroups = [
        { name: 'clipboard', groups: [ 'clipboard', 'undo' ] },
        { name: 'editing', groups: [ 'find', 'selection', 'spellchecker', 'editing' ] },
        { name: 'links', groups: [ 'links' ] },
        { name: 'insert', groups: [ 'insert' ] },
        { name: 'forms', groups: [ 'forms' ] },
        { name: 'tools', groups: [ 'tools' ] },

        '/',
        { name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ] },
        { name: 'paragraph', groups: [ 'list', 'indent', 'blocks', 'align', 'bidi', 'paragraph' ] },
        { name: 'styles', groups: [ 'styles' ] },
        { name: 'colors', groups: [ 'colors' ] },
        { name: 'about', groups: [ 'about' ] }
    ];



    config.removeButtons = 'About,Styles,Format,RemoveFormat,Source,Maximize,Cut,Copy,Paste,PasteFromWord,PasteText,Redo,Undo,Scayt,Print';

    // ... rest of the original config.js  ...
    config.forcePasteAsPlainText = true;



}