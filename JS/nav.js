function navdef() {
	search = document.getElementById("list-search");
	quick = document.getElementById("menu-quick");
	note = document.getElementById("list-note");
	notebook = document.getElementById("menu-notebook");
	label = document.getElementById("menu-label");
	quick1 = document.getElementById("list-quick");
	notebook1 = document.getElementById("list-notebook");
	label1 = document.getElementById("list-label");

	search.style.display = "none";
	quick.style.display = "none";
	note.style.display = "block";
	notebook.style.display = "none";
	label.style.display = "none";
	quick1.style.display = "none";
	notebook1.style.display = "none";
	label1.style.display = "none";

	xmlhr = new XMLHttpRequest();
}

function gosearch() {
	search.style.display = "block";
	quick.style.display = "none";
	note.style.display = "none";
	notebook.style.display = "none";
	label.style.display = "none";
	quick1.style.display = "none";
	notebook1.style.display = "none";
	label1.style.display = "none";
}

function goquick() {
	search.style.display = "none";
	quick.style.display = "block";
	note.style.display = "none";
	notebook.style.display = "none";
	label.style.display = "none";
	quick1.style.display = "none";
	notebook1.style.display = "none";
	label1.style.display = "none";
}

function choosenote() {
	search.style.display = "none";
	quick.style.display = "none";
	note.style.display = "block";
	notebook.style.display = "none";
	label.style.display = "none";
	quick1.style.display = "none";
	notebook1.style.display = "none";
	label1.style.display = "none";
}

function choosenotebook() {
	search.style.display = "none";
	quick.style.display = "none";
	note.style.display = "none";
	notebook.style.display = "block";
	label.style.display = "none";
	quick1.style.display = "none";
	notebook1.style.display = "none";
	label1.style.display = "none";
}

function golabel() {
	search.style.display = "none";
	quick.style.display = "none";
	note.style.display = "none";
	notebook.style.display = "none";
	label.style.display = "block";
	quick1.style.display = "none";
	notebook1.style.display = "none";
	label1.style.display = "none";
}

function noteInQuick() {
	search.style.display = "none";
	quick.style.display = "block";
	note.style.display = "none";
	notebook.style.display = "none";
	label.style.display = "none";
	quick1.style.display = "none";
	notebook1.style.display = "none";
	label1.style.display = "none";
}

function noteInNotebook(id) {
	search.style.display = "none";
	quick.style.display = "none";
	note.style.display = "none";
	notebook.style.display = "none";
	label.style.display = "none";
	quick1.style.display = "none";
	notebook1.style.display = "block";
	label1.style.display = "none";
	// 
	var nodes = notebook1.getElementsByTagName("div");
	nodes[1].innerText = "笔记本:book " + id;
	// xmlhr.onreadystatechange = showNotesOfBook;
	// xmlhr.open("GET","getNotesOfNotebook.action?notebookid="+id,"true");
	//	 
	// xmlhr.send(null);
}

function showNotesOfBook(nbs) {
	alert("showNotesOfBook");
	alert(nbs);
	alert("showNotesOfBook.end");
}

function noteInLabel() {
	search.style.display = "none";
	quick.style.display = "none";
	note.style.display = "none";
	notebook.style.display = "none";
	label.style.display = "none";
	quick1.style.display = "none";
	notebook1.style.display = "none";
	label1.style.display = "block";
}

function viewNote(obj) {
	var note = document.getElementById("view-note");
	//var noteid = document.getElementById("tmp-note-id");
	var editnote = document.getElementById("divtoeditnote");
	//alert(noteid.innerText);
	var nodes = obj.getElementsByTagName("div");
	var converter = new Showdown.converter();
	var html = converter.makeHtml(nodes[2].innerText);
	note.innerHTML = "<input type=\"text\" class=\"title\"  value=\""
			+ nodes[1].innerText + "\" readonly=\"value\">" + html;
	editnote.innerHTML="<a href=\"editnote.action?noteid="+nodes[3].innerText+"\" class=\"finish0\">编辑</a>";
}

function sbm() {
	//alert('hi');
	document.gosearch.submit();
}

function changenotebook(){
	alert("changenotebook not allow yet");
}
// ------------------------------ editer

function selectnotebook() {
	var sel = document.getElementById("notebooks");
	var i = sel.selectedIndex;
	var value = sel.options[i].value;
	var nb = document.getElementById("tempnbid");
	nb.value = value;
}
function corvertRealTime() {
	var txt = document.getElementById("txt");
	var viewer = document.getElementById("html");
	var tag = document.getElementById("autoscroll");
	var converter = new Showdown.converter();
	var html = converter.makeHtml(txt.value);
	viewer.innerHTML = html;
	if (tag.checked)
		viewer.scrollTop = viewer.scrollHeight;
}
