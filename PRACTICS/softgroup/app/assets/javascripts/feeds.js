CKEDITOR.on( 'instanceCreated', function( evt ) {
    console.log( 'instanceCreated', evt, evt.editor );
} );

function newEditor() {
    // This HTML could've come from AJAX data.
    var el = CKEDITOR.dom.element.createFromHtml( '<div contenteditable="true">Hello world</div>' );
    CKEDITOR.document.getBody().append( el );

    // Create editor instance on the new element.
    CKEDITOR.inline( el, {
        toolbarGroups: [
            { name: 'basicstyles' }
        ]
    } );
}
