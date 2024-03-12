/* jce - 2.9.11 | 2021-08-17 | https://www.joomlacontenteditor.net | Copyright (C) 2006 - 2021 Ryan Demmer. All rights reserved | GNU/GPL Version 2 or later - http://www.gnu.org/licenses/gpl-2.0.html */
!function(){var each=tinymce.each,DomParser=tinymce.html.DomParser,Serializer=tinymce.html.Serializer;tinymce.create("tinymce.plugins.EffectsPlugin",{init:function(ed,url){function cleanEventAttribute(val){return val?val.replace(/^\s*this.src\s*=\s*\'([^\']+)\';?\s*$/,"$1").replace(/^\s*|\s*$/g,""):""}function bindMouseoverEvent(ed){each(ed.dom.select("img[data-mouseover]"),function(elm){var src=elm.getAttribute("src"),mouseover=elm.getAttribute("data-mouseover");elm.getAttribute("data-mouseout");return!src||!mouseover||(elm.onmouseover=function(){elm.setAttribute("src",elm.getAttribute("data-mouseover"))},void(elm.onmouseout=function(){elm.setAttribute("src",elm.getAttribute("data-mouseout")||src)}))})}this.editor=ed,ed.onPreInit.add(function(){ed.onBeforeSetContent.add(function(ed,o){if(o.content.indexOf("onmouseover=")!==-1){var parser=new DomParser({validate:!1},ed.schema);parser.addAttributeFilter("onmouseover",function(nodes){for(var i=nodes.length;i--;){var node=nodes[i];if("img"===node.name){var mouseover=node.attr("onmouseover"),mouseout=node.attr("onmouseout");if(mouseover&&0===mouseover.indexOf("this.src")&&(mouseover=cleanEventAttribute(mouseover),node.attr("onmouseover",null),mouseover&&(node.attr("data-mouseover",mouseover),mouseout&&0===mouseout.indexOf("this.src")))){if(mouseout=cleanEventAttribute(mouseout),node.attr("onmouseout",null),!mouseout)return;node.attr("data-mouseout",mouseout)}}}});var fragment=parser.parse(o.content,{forced_root_block:!1,isRootContent:!0});o.content=new Serializer({validate:!1},ed.schema).serialize(fragment)}}),ed.parser.addAttributeFilter("onmouseover",function(nodes){for(var i=nodes.length;i--;){var node=nodes[i];if("img"===node.name){var mouseover=node.attr("onmouseover"),mouseout=node.attr("onmouseout");mouseover&&0===mouseover.indexOf("this.src")&&(mouseover=cleanEventAttribute(mouseover),node.attr("data-mouseover",mouseover),node.attr("onmouseover",null),mouseout&&0===mouseout.indexOf("this.src")&&(mouseout=cleanEventAttribute(mouseout),node.attr("data-mouseout",mouseout),node.attr("onmouseout",null)))}}}),ed.serializer.addAttributeFilter("data-mouseover",function(nodes){for(var i=nodes.length;i--;){var node=nodes[i];if("img"===node.name){var mouseover=node.attr("data-mouseover"),mouseout=node.attr("data-mouseout");mouseover=cleanEventAttribute(mouseover),node.attr("data-mouseover",null),node.attr("data-mouseout",null),mouseover&&(node.attr("onmouseover","this.src='"+mouseover+"';"),mouseout=cleanEventAttribute(mouseout),mouseout&&node.attr("onmouseout","this.src='"+mouseout+"';"))}}}),ed.selection.onSetContent.add(function(){bindMouseoverEvent(ed)}),ed.onSetContent.add(function(){bindMouseoverEvent(ed)}),ed.onUpdateMedia.add(function(ed,o){each(ed.dom.select("img[data-mouseover]"),function(elm){var mouseover=elm.getAttribute("data-mouseover"),mouseout=elm.getAttribute("data-mouseout");return!mouseover||(mouseover==o.before&&elm.setAttribute("data-mouseover",o.after),void(mouseout==o.before&&elm.setAttribute("data-mouseout",o.after)))})})})}}),tinymce.PluginManager.add("effects",tinymce.plugins.EffectsPlugin)}();