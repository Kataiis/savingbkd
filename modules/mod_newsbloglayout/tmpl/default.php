<?php
/**
 * @subpackage  mod_newsbloglayoutpro
 *
 * @copyright   Copyright (C) 2017 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */
defined('_JEXEC') or die;

$app	= JFactory::getApplication();
$menu   = $app->getMenu();
$doc = JFactory::getDocument();

$k = 1;

$items = $params->get('count');
$limittexttitlearticle = $params->get('limittexttitlearticle', 50);
$firsrcolumnlimittexttitlearticle = $params->get('firsrcolumnlimittexttitlearticle', 50);
$patchtoimage = $params->get('patchtoimage');
$artclehitsdateposition = $params->get('artclehitsdateposition');

$itemsarticleheight = $params->get('itemsarticleheight');
$itemsarticlemarginbottom = $params->get('itemsarticlemarginbottom');
$itemsarticleboxshadow = $params->get('itemsarticleboxshadow');
$itemsarticlehoverboxshadow = $params->get('itemsarticlehoverboxshadow');

$itemarticlespaddingbottom = $params->get('itemarticlespaddingbottom');
$itemarticlespaddingtop  = $params->get('itemarticlespaddingtop');
$itemarticlespaddingleft =  $params->get('itemarticlespaddingleft');
$itemarticlespaddingright =  $params->get('itemarticlespaddingright');

$modulebackground = $params->get('modulebackground');
$itemarticlesmargintop = $params->get('itemarticlesmargintop');
$itemsbackground = $params->get('itemsbackground');
$itemsbackgroundhover  = $params->get('itemsbackgroundhover');
$itemsbackgroundhovertransition = $params->get('itemsbackgroundhovertransition');
$newsboximagefloat = $params->get('newsboximagefloat');
$newsboximagewidth = $params->get('newsboximagewidth');
$newsboximagepadding = $params->get('newsboximagepadding');
$newsboximageborderradius = $params->get('newsboximageborderradius');
$firstarticletitletextalign = $params->get('firstarticletitletextalign');
$firstarticletitlemargin = $params->get('firstarticletitlemargin');
$firstarticletitlecolor = $params->get('firstarticletitlecolor');
$firstarticletitlecssfontfamily  = $params->get('firstarticletitlecssfontfamily');
$firstarticletitlefontsize = $params->get('firstarticletitlefontsize');
$firstarticletitlelineheight = $params->get('firstarticletitlelineheight');
$firstarticletitlefontweight = $params->get('firstarticletitlefontweight');
$firstarticletitletextdecoration = $params->get('firstarticletitletextdecoration');
$firstarticletitlehovercolor = $params->get('firstarticletitlehovercolor');
$hoveritemtitlecolor = $params->get('hoveritemtitlecolor');
$hoverfirstarticletitletextdecoration = $params->get('hoverfirstarticletitletextdecoration');

$firstarticlehitsupdatetexalign = $params->get('firstarticlehitsupdatetexalign');
$firstarticlehitsupdatemargin = $params->get('firstarticlehitsupdatemargin');
$firstarticlehitsupdatefontsize = $params->get('firstarticlehitsupdatefontsize');
$firstarticlehitsupdatecolor = $params->get('firstarticlehitsupdatecolor');
$firstarticletitleletterspacing = $params->get('firstarticletitleletterspacing');

$firstcolumntitletextalign = $params->get('firstcolumntitletextalign');
$firscolumntitleposition = $params->get('firscolumntitleposition');
$firstcolumnitemsheight = $params->get('firstcolumnitemsheight');
$firstcolumnitemsimageheight = $params->get('firstcolumnitemsimageheight');
$firstcolumnwidth = $params->get('firstcolumnwidth');
$secondcolumnwidth = $params->get('secondcolumnwidth');
$firstcolumnposition = $params->get('firstcolumnposition');
$secondcolumnposition = $params->get('secondcolumnposition');
$style = '
ul.latestnewsbox'.$module->id.''.$moduleclass_sfx.' { background: '.$modulebackground.'; width: 100%; margin: auto !important; position: relative; box-sizing: border-box; padding-top: '.$itemarticlespaddingtop.'; padding-left: '.$itemarticlespaddingleft.'; padding-right: '.$itemarticlespaddingright.'; padding-bottom: '.$itemarticlespaddingbottom.'; }
ul.latestnewsbox'.$module->id.''.$moduleclass_sfx.' .freshnews'.$module->id.' { background:'.$itemsbackground.'; margin: 0px; list-style: none;  width: 100%; height: '.$itemsarticleheight.'; max-height:'.$itemsarticleheight.'; margin-top: '.$itemarticlesmargintop.'; margin-bottom:'.$itemsarticlemarginbottom.'; box-shadow:'.$itemsarticleboxshadow.'; transition: all '.$itemsbackgroundhovertransition.'ms ease-in-out;}
ul.latestnewsbox'.$module->id.''.$moduleclass_sfx.' .freshnews'.$module->id.':hover {background: '.$itemsbackgroundhover.'; box-shadow:'.$itemsarticlehoverboxshadow.'; transition: all '.$itemsbackgroundhovertransition.'ms ease-in-out; }
.newsbox'.$module->id.' {display: table; width: 100%;}
.leftnews'.$module->id.' .newstitle'.$module->id.' {display: table; width: 100%;}
.newsboximage'.$module->id.' {display: table; float: '.$newsboximagefloat.'; width: '.$newsboximagewidth.';}
.imagemorearticle'.$module->id.' img {margin: 0px !important; border: none !important; box-sizing: border-box; padding: '.$newsboximagepadding.'; border-radius: '.$newsboximageborderradius.'; max-width: 100% !important;}
ul.latestnewsbox'.$module->id.''.$moduleclass_sfx.' .leftnews'.$module->id.' .freshnews'.$module->id.' {min-height: '.$firstcolumnitemsheight.' !important;}
ul.latestnewsbox'.$module->id.''.$moduleclass_sfx.' .leftnews'.$module->id.' .freshnews'.$module->id.' .firstarticletitle'.$module->id.' {text-align: '.$firstcolumntitletextalign.';}
.leftnews'.$module->id.' .newsboximage'.$module->id.' {width: 100% !important;}
.leftnews'.$module->id.' .newsboximage'.$module->id.' img {height: '.$firstcolumnitemsimageheight.' !important; border-radius: 0px;}
ul.latestnewsbox'.$module->id.''.$moduleclass_sfx.' .leftnews'.$module->id.' {width: '.$firstcolumnwidth.'; float: '.$firstcolumnposition.';}
ul.latestnewsbox'.$module->id.''.$moduleclass_sfx.' .rightnews'.$module->id.' {width: '.$secondcolumnwidth.'; float: '.$secondcolumnposition.';}
.firstarticletitle'.$module->id.' { line-height: normal; text-align: '.$firstarticletitletextalign.'; margin: '.$firstarticletitlemargin.';}
.firstarticletitle'.$module->id.' a { color: '.$firstarticletitlecolor.' !important; font-family: '.$firstarticletitlecssfontfamily.' !important; font-size: '.$firstarticletitlefontsize.' !important; font-weight: '.$firstarticletitlefontweight.'; text-decoration: '.$firstarticletitletextdecoration.' !important; line-height: '.$firstarticletitlelineheight.' !important; letter-spacing: '.$firstarticletitleletterspacing.';}
ul.latestnewsbox'.$module->id.''.$moduleclass_sfx.' .freshnews'.$module->id.':hover .firstarticletitle'.$module->id.' a:hover { color: '.$firstarticletitlehovercolor.' !important; text-decoration: '.$hoverfirstarticletitletextdecoration.' !important; transition: all '.$itemsbackgroundhovertransition.'ms ease-in-out;}
ul.latestnewsbox'.$module->id.''.$moduleclass_sfx.' .freshnews'.$module->id.':hover .firstarticletitle'.$module->id.' a {color: '.$hoveritemtitlecolor.' !important; transition: all '.$itemsbackgroundhovertransition.'ms ease-in-out;}
.firstarticledatecreate'.$module->id.'{ display: table; text-align: '.$firstarticlehitsupdatetexalign.'; margin: '.$firstarticlehitsupdatemargin.'; font-size: '.$firstarticlehitsupdatefontsize.'; color: '.$firstarticlehitsupdatecolor.'; }
'; 
$doc->addStyleDeclaration( $style );

// Use of title/autor/hits/tags
 if ($newsboximagewidth == '100%') {
$style = '
.rightnews'.$module->id.' .newstitle'.$module->id.' {display: table; width: 100%;}
'; 
$doc->addStyleDeclaration( $style );
}

 else {
$style = '
.rightnews'.$module->id.' .newstitle'.$module->id.' {display: table; width: calc(100% - '.$newsboximagewidth.');}
'; 
$doc->addStyleDeclaration( $style );
}

// Use of autor article
$firstarticleautoronof = $params->get('firstarticleautoronof');
$firstarticleautorfontweight = $params->get('firstarticleautorfontweight');
$firstarticleautortextalign = $params->get('firstarticleautortextalign');
$firstarticleautorfontsize = $params->get('firstarticleautorfontsize');
$firstarticleautorcolor = $params->get('firstarticleautorcolor');
$firstarticleautormargin = $params->get('firstarticleautormargin');
$style = '
.firstarticleautor'.$module->id.' {margin: '.$firstarticleautormargin.'; font-weight: '.$firstarticleautorfontweight.'; text-align: '.$firstarticleautortextalign.'; font-size: '.$firstarticleautorfontsize.'; color: '.$firstarticleautorcolor.'; }
'; 
$doc->addStyleDeclaration( $style );

// Use of Google Font and params article title
if ($params->get('googleFontarticletitle'))
{
	$doc->addStyleSheet('//fonts.googleapis.com/css?family=' . $params->get('firstarticletitlefontfamily'));
	$doc->addStyleDeclaration("
.firstarticletitle".$module->id." a {
		font-family: '" . str_replace('+', ' ', $params->get('firstarticletitlefontfamily')) . "', sans-serif !important;
	}");
}

$firstarticledateupdate = $params->get('firstarticledateupdate');
$firstarticledateformatupdate = $params->get('firstarticledateformatupdate');
$firstarticlehits = $params->get('firstarticlehits');
$dateofarticle  = $params->get('dateofarticle');

// Start mobile layout:
$modverticalnewsmobilelayout =  $params->get('modverticalnewsmobilelayout');
$articlesimgheightmobile =  $params->get('articlesimgheightmobile');
$style = '

@media all and (max-width: '.$modverticalnewsmobilelayout.')
{
ul.latestnewsbox'.$module->id.''.$moduleclass_sfx.' { box-sizing: border-box; padding: 0px; }
ul.latestnewsbox'.$module->id.''.$moduleclass_sfx.' .freshnews'.$module->id.' { display: inline-table; height: 100%; padding-top: 5px; padding-bottom: 5px;}
.newsboximage'.$module->id.' {display: table; float: none; width: 100%;}
.imagemorearticle'.$module->id.' img {margin: 0px !important; border: none !important; box-sizing: border-box; padding: '.$newsboximagepadding.'; min-height: '.$articlesimgheightmobile.';  max-height: '.$articlesimgheightmobile.'; border-radius: 0px;}
ul.latestnewsbox'.$module->id.''.$moduleclass_sfx.' .leftnews'.$module->id.' .freshnews'.$module->id.' {min-height: 100% !important; max-height: 100% !important;}
ul.latestnewsbox'.$module->id.''.$moduleclass_sfx.' .leftnews'.$module->id.' {width: 100%; float: none;}
ul.latestnewsbox'.$module->id.''.$moduleclass_sfx.' .rightnews'.$module->id.' {width: 100%; float: none;}
.rightnews'.$module->id.' .newstitle'.$module->id.' {width: 100% !important;}
}
'; 
$doc->addStyleDeclaration( $style );
// End mobile layout:

// Use of Google Font Title and params module title
$newsmoduletitleonof = $params->get('newsmoduletitleonof');
$newsmoduletitleposition = $params->get('newsmoduletitleposition');
$ourteamtitlebackground = $params->get('ourteamtitlebackground');
$ourteamtitlecolor = $params->get('ourteamtitlecolor');
$ourteamtitlefontsize = $params->get('ourteamtitlefontsize');
$ourteamtitletextshadow = $params->get('ourteamtitletextshadow');
$ourteamtitleletterspacing = $params->get('ourteamtitleletterspacing');
$ourteamtitlefontweight = $params->get('ourteamtitlefontweight');
$ourteamtitlefontfamilycss = $params->get('ourteamtitlefontfamilycss');
$ourteamtitletextalign = $params->get('ourteamtitletextalign');
$ourteamtitlepadding = $params->get('ourteamtitlepadding');
$newsmoduletitlebackground = $params->get('newsmoduletitlebackground');
$ourteamtitlehovercolor = $params->get('ourteamtitlehovercolor');
$ourteamtitletextdecoration = $params->get('ourteamtitletextdecoration');

if ($params->get('googleFont'))
{
	$doc->addStyleSheet('//fonts.googleapis.com/css?family=' . $params->get('ourteamtitlefontfamily'));
	$doc->addStyleDeclaration("
h2 .art-ourteamtitle".$module->id.", .art-ourteamtitle".$module->id." h2, .art-ourteamtitle".$module->id." h2 a, a h2 .art-ourteamtitle".$module->id." {
		font-family: '" . str_replace('+', ' ', $params->get('ourteamtitlefontfamily')) . "', sans-serif !important;
	}");
}

$style = '
.art-ourteamtitle'.$module->id.' { background: '.$modulebackground.'; display: block !important; left: 0px !important; margin-left: 0px !important; position: relative !important; text-align: '.$ourteamtitletextalign.' !important;  width: 100%; margin: 0px; box-sizing: border-box; }
h2 .art-ourteamtitle'.$module->id.', .art-ourteamtitle'.$module->id.' h2, .art-newsmoduletitle'.$module->id.' h2 a {font-family: '.$ourteamtitlefontfamilycss.' !important; color: '.$ourteamtitlecolor.' !important; font-size:'.$ourteamtitlefontsize.' !important; text-shadow: '.$ourteamtitletextshadow.'; letter-spacing: '.$ourteamtitleletterspacing.'; font-weight: '.$ourteamtitlefontweight.'; margin: 0 !important; padding: '.$ourteamtitlepadding.' !important; line-height: normal;}
.art-newsmoduletitle'.$module->id.' {background: '.$newsmoduletitlebackground.';}
.art-newsmoduletitle'.$module->id.' h2 a:hover {text-decoration: '.$ourteamtitletextdecoration.' !important; color: '.$ourteamtitlehovercolor.' !important;}
'; 
$doc->addStyleDeclaration( $style );

// date update and hit articles
$pathtomodule = JURI::base().'modules/'.$module->module;
$iconcontentdateupdate = $params->get('iconcontentdateupdate');
$iconarticlehits = $params->get('iconarticlehits');

$style = '
.dateupdate'.$module->id.'::before { content: '.$iconcontentdateupdate.'('.$pathtomodule.'/img/date.png); padding: 0 5px 0 0; opacity: 0.6; }
.hits'.$module->id.'::before { content: '.$iconarticlehits.'('.$pathtomodule.'/img/hit.png); padding: 0 5px 0 0; opacity: 0.6; }
'; 
$doc->addStyleDeclaration( $style );

// Top image with menu
$imagesceneonof = $params->get('imagesceneonof');
$imagesceneimgheight = $params->get('imagesceneimgheight');
$imagescenemenubackground = $params->get('imagescenemenubackground');
$imagescenemenucolor = $params->get('imagescenemenucolor');
$imagescenemenuhovercolor = $params->get('imagescenemenuhovercolor');
$imagescenemenufontsize = $params->get('imagescenemenufontsize');
$imagescenemenufontfamily = $params->get('imagescenemenufontfamily');
$imagescenemenufontweight = $params->get('imagescenemenufontweight');
$imagescenemenuhovertextdecoration = $params->get('imagescenemenuhovertextdecoration');
$imagescenemenutransitioneffect = $params->get('imagescenemenutransitioneffect');

$Title[]= $params->get( '!', "" );
$Link[]= $params->get( '!', "" );

for ($j=1; $j<=20; $j++) {

	$Title[]		= $params->get( 'Title'.$j , "" );
	$Link[]	= $params->get( 'Link'.$j , "" );	
}
$style = '
.imagescene'.$module->id.' { height: 100%; box-sizing: border-box; position: relative; overflow: hidden; }
.imagescene'.$module->id.' > img { height: '.$imagesceneimgheight.' !important;  min-height: '.$imagesceneimgheight.' !important; width:100% !important; max-width:100% !important; margin: 0px !important; box-sizing: border-box;}
.imagescenemenu'.$module->id.' > span { display: inline-block; margin-top:5px; margin-bottom: 5px;}
.imagescenemenu'.$module->id.' > span::after {content: "|"; color: '.$imagescenemenucolor.' !important;}
.imagescenemenu'.$module->id.' > span:last-child::after {content: "";}
.imagescenemenu'.$module->id.' > span a {color: '.$imagescenemenucolor.' !important; padding: 7px; font-size: '.$imagescenemenufontsize.' !important; font-family: '.$imagescenemenufontfamily.' !important; font-weight: '.$imagescenemenufontweight.' !important;}
.imagescenemenu'.$module->id.' > span a:hover {color: '.$imagescenemenuhovercolor.' !important; text-decoration: '.$imagescenemenuhovertextdecoration.' !important;}
'; 
$doc->addStyleDeclaration( $style );

 if ($params->get('imagescenemenueffect')) {
$style = '
.imagescenemenu'.$module->id.' {position: absolute; bottom: -30px; display: inline-table; text-align: center; width: 100%; box-sizing: border-box; background: '.$imagescenemenubackground.'; padding: 15px; left: 0px; opacity: 0; transition: all '.$imagescenemenutransitioneffect.'ms ease-in-out;}
.imagescene'.$module->id.':hover .imagescenemenu'.$module->id.' { bottom: 0px; opacity: 1; transition: all '.$imagescenemenutransitioneffect.'ms ease-in-out; }
'; 
$doc->addStyleDeclaration( $style );
}

elseif ($params->get('imagescenemenueffect2')) {
$style = '
.imagescenemenu'.$module->id.' {position: absolute; bottom: 105%; display: inline-table; text-align: center; width: 100%; box-sizing: border-box; background: '.$imagescenemenubackground.'; padding: 15px; left: 0px; opacity: 1; transition: all '.$imagescenemenutransitioneffect.'ms ease-in-out;}
.imagescene'.$module->id.':hover .imagescenemenu'.$module->id.' { bottom: 0px; opacity: 1; transition: all '.$imagescenemenutransitioneffect.'ms ease-in-out; }
'; 
$doc->addStyleDeclaration( $style );
}

elseif ($params->get('imagescenemenueffect3')) {
$style = '
.imagescenemenu'.$module->id.' {position: absolute; bottom: 0px; display: inline-table; text-align: center; width: 100%; box-sizing: border-box; background: '.$imagescenemenubackground.'; padding: 15px; left: -105%; opacity: 1; transition: all '.$imagescenemenutransitioneffect.'ms ease-in-out;}
.imagescene'.$module->id.':hover .imagescenemenu'.$module->id.' { bottom: 0px; left: 0px; opacity: 1; transition: all '.$imagescenemenutransitioneffect.'ms ease-in-out; }
'; 
$doc->addStyleDeclaration( $style );
}

elseif ($params->get('imagescenemenueffect4')) {
$style = '
.imagescenemenu'.$module->id.' {position: absolute; bottom: 0px; display: inline-table; text-align: center; width: 100%; box-sizing: border-box; background: '.$imagescenemenubackground.'; padding: 15px; left: 105%; opacity: 1; transition: all '.$imagescenemenutransitioneffect.'ms ease-in-out;}
.imagescene'.$module->id.':hover .imagescenemenu'.$module->id.' { bottom: 0px; opacity: 1; left: 0px; transition: all '.$imagescenemenutransitioneffect.'ms ease-in-out; }
'; 
$doc->addStyleDeclaration( $style );
}

 else {
$style = '
.imagescenemenu'.$module->id.' {position: absolute; bottom: 0px; display: inline-table; text-align: center; width: 100%; box-sizing: border-box; background: '.$imagescenemenubackground.'; padding: 15px; left: 0px; opacity: 1; transition: all '.$imagescenemenutransitioneffect.'ms ease-in-out;}
'; 
$doc->addStyleDeclaration( $style );
}

// tags
$tagsleftarticles = $params->get('tagsleftarticles');
$tagsrightarticles = $params->get('tagsrightarticles');
$limitcounttags = $params->get('limitcounttags');
$tagslinktarget = $params->get('tagslinktarget');

$ariclestagsmargin = $params->get('ariclestagsmargin');
$ariclestagsposition = $params->get('ariclestagsposition');
$ariclestagsspancolor = $params->get('ariclestagsspancolor');
$ariclestagscolor = $params->get('ariclestagscolor');
$ariclestagsfontsize = $params->get('ariclestagsfontsize');
$ariclestagscolorhover = $params->get('ariclestagscolorhover');
$ariclestagshoverdecoration = $params->get('ariclestagshoverdecoration');

$style = '
.tags'.$module->id.' {box-sizing: border-box; display: block; text-align: '.$ariclestagsposition.'; margin:'.$ariclestagsmargin.'; font-size: '.$ariclestagsfontsize.';}
.tags'.$module->id.' > span {color: '.$ariclestagsspancolor.' !important; }
.tags'.$module->id.' a {color: '.$ariclestagscolor.' !important; font-size: '.$ariclestagsfontsize.';}
.tags'.$module->id.' a:hover {color: '.$ariclestagscolorhover.' !important; text-decoration: none !important;}
'; 
$doc->addStyleDeclaration( $style );

 if ($params->get('showtagsmobile')) {
$style = '
@media all and (max-width: '.$modverticalnewsmobilelayout.')
{
.tags'.$module->id.' {display: none !important;}
}
'; 
$doc->addStyleDeclaration( $style );
}

?>

<?php if ( 1 == $newsmoduletitleonof ) : ?>
<?php if ($newsmoduletitleposition == 1): ?>
<?php if ($params->get('linktitleurl')) : ?>
<div class="art-ourteamtitle<?php echo $module->id;?>"><div class="art-newsmoduletitle<?php echo $module->id;?>"><h2><a href="<?php echo $params->get('modtitlelinkurl'); ?>" target="<?php echo $params->get('linkmoreaerticlestarget'); ?>"><?php echo $params->get('ourteamtitle'); ?></a></h2></div art-newsmoduletitle></div>
<?php else : ?>
<div class="art-ourteamtitle<?php echo $module->id;?>"><div class="art-newsmoduletitle<?php echo $module->id;?>"><h2><?php echo $params->get('ourteamtitle'); ?></h2></div art-newsmoduletitle></div>
<?php endif; ?>
<?php endif; ?>
<?php endif; ?>

<?php if ( 1 == $imagesceneonof ) : ?>
<div class="imagescene<?php echo $module->id;?>">
<img src="<?php echo $params->get('imagesceneimage'); ?>" alt="<?php echo $params->get('ourteamtitle'); ?>">
 <div class="imagescenemenu<?php echo $module->id;?>">
<?php for ($i=0; $i<=20; $i++){ if ($Title[$i] != null) { ?>
<span><a href="<?php echo $Link[$i] ?>" target="<?php echo $params->get('linkmoreaerticlestarget'); ?>"><?php echo $Title[$i] ?></a></span>
 <?php }};  ?>  
 </div imagescenemenu>
</div imagescene>
<?php endif; ?>

<ul class="latestnewsbox<?php echo $module->id; ?><?php echo $moduleclass_sfx; ?>" style="display: table;">
<?php foreach ($list as $item) :  ?>

<?php
    $images = json_decode($item->images) ; 
	$imagetitle = $item->title;
	$author = $item->created_by_alias ? $item->created_by_alias : $item->author;
?> 
 
        <?php if (  $k == 1    )  : ?> 
    
    <div class="leftnews<?php echo $module->id; ?>">
    
        <li class="freshnews<?php echo $module->id; ?>">
 
    <div class="newsbox<?php echo $module->id; ?>">
         <?php if (  $firscolumntitleposition == 1    )  : ?> 
       <div class="firstarticletitle<?php echo $module->id; ?>"> <a href="<?php echo $item->link; ?>" target="<?php echo $params->get('linkmoreaerticlestarget'); ?>" title="<?php echo $imagetitle; ?>"><?php if(strlen($item->title) > $firsrcolumnlimittexttitlearticle) { $item->title = substr($item->title, 0, $firsrcolumnlimittexttitlearticle)." …";} echo $item->title; ?></a> </div firstarticletitle>
        <?php endif; ?>
 
    <div class="newsboximage<?php echo $module->id; ?>">
       <?php if ($patchtoimage == 1) : ?> 
       <div class="imagemorearticle<?php echo $module->id; ?>">   
       <a href="<?php echo $item->link; ?>" target="<?php echo $params->get('linkmoreaerticlestarget'); ?>">
        <img src="<?php echo json_decode($item->images)->image_intro; ?>"   alt="<?php echo htmlspecialchars($images->image_intro_alt); ?>"  title="<?php echo $imagetitle; ?>" style="width:100%; height: <?php echo $params->get('articlesimgheight'); ?>;" />        
        </a>  
        </div imagemorearticle>
        <?php endif; ?>
        
       <?php if ($patchtoimage == 2) : ?> 
       <div class="imagemorearticle<?php echo $module->id; ?>">   
       <a href="<?php echo $item->link; ?>" target="<?php echo $params->get('linkmoreaerticlestarget'); ?>">
        <img src="<?php echo json_decode($item->images)->image_fulltext; ?>"   alt="<?php echo htmlspecialchars($images->image_intro_alt); ?>"  title="<?php echo $imagetitle; ?>" style="width:100%; height: <?php echo $params->get('articlesimgheight'); ?>;" />        
        </a>  
        </div imagemorearticle>
        <?php endif; ?>
        
      <?php if ($patchtoimage == 3) : ?> 
            <?php 
                $matches = null;
                preg_match_all('/<img[^>]+src=([\'"])?((?(1).+?|[^\s>]+))(?(1)\1)/', $item->introtext, $matches);
                if (count($matches[2]) > 0) :
            ?>
                <div class="imagemorearticle<?php echo $module->id; ?>">
                <a href="<?php echo $item->link; ?>" target="<?php echo $params->get('linkmoreaerticlestarget'); ?>">
                    <img src="<?php echo $matches[2][0] ?>" title="<?php echo $imagetitle; ?>" alt="<?php echo $imagetitle; ?>" style="width:100%; height: <?php echo $params->get('articlesimgheight'); ?>;" />
               </a>
                </div imagemorearticle>
            <?php endif; ?>
        <?php endif; ?>
   </div newsboximage>
   
   <div class="newstitle<?php echo $module->id; ?>">

         <?php if (  $firscolumntitleposition == 2    )  : ?> 
       <div class="firstarticletitle<?php echo $module->id; ?>"> <a href="<?php echo $item->link; ?>" target="<?php echo $params->get('linkmoreaerticlestarget'); ?>" title="<?php echo $imagetitle; ?>"><?php if(strlen($item->title) > $firsrcolumnlimittexttitlearticle) { $item->title = substr($item->title, 0, $firsrcolumnlimittexttitlearticle)." …";} echo $item->title; ?></a> </div firstarticletitle>
        <?php endif; ?>

        <?php if ($firstarticleautoronof == 1): ?>
       <div class="firstarticleautor<?php echo $module->id ;?>"> <?php echo $params->get('firstarticleautortext'); ?> <?php echo JText::sprintf($author); ?></div>
      <?php endif; ?>
     <?php if ($artclehitsdateposition == 1): ?>
  <div class="firstarticledatecreate<?php echo $module->id ;?>"> <?php if ($firstarticlehits == 1) : ?><span class="hits<?php echo $module->id; ?>"><?php echo $item->hits; ?></span>  │<?php endif; ?>     <?php if ($firstarticledateupdate == 1) : ?><span class="dateupdate<?php echo $module->id; ?>"><?php echo JHtml::_('date', $item->$dateofarticle, JText::_($firstarticledateformatupdate)); ?></span><?php endif; ?></div>
      <?php endif; ?>
      
     <?php if ($tagsleftarticles == 1): ?>
  <div class="tags<?php echo $module->id ;?>">
  <span><?php echo $params->get('tagsatribute'); ?></span>
 <?php
// set tags
$tags = '';
if (!empty($item->tags->itemTags)) {
    JLoader::register('TagsHelperRoute',JPATH_BASE.'/components/com_tags/helpers/route.php');
    foreach ($item->tags->itemTags as $i => $tag) {
        if (in_array($tag->access,     JAccess::getAuthorisedViewLevels(JFactory::getUser()->get('id')))) {
         if (++$i <= $limitcounttags) $tags .='<a href="'.JRoute::_(TagsHelperRoute::getTagRoute($tag->tag_id.'-'.$tag->alias)).'" target="'.$tagslinktarget.'">'.$tag->title.' | </a>';		   
        }
    }
}
$args['tags'] = $tags;
echo $tags;
?> 
  </div>     
      <?php endif; ?>

   </div newstitle>
 
   </div newsbox>
   
     <?php if ($artclehitsdateposition == 2): ?>
  <div class="firstarticledatecreate<?php echo $module->id ;?>"> <?php if ($firstarticlehits == 1) : ?><span class="hits<?php echo $module->id; ?>"><?php echo $item->hits; ?></span>  │<?php endif; ?>     <?php if ($firstarticledateupdate == 1) : ?><span class="dateupdate<?php echo $module->id; ?>"><?php echo JHtml::_('date', $item->$dateofarticle, JText::_($firstarticledateformatupdate)); ?></span><?php endif; ?></div>
      <?php endif; ?>
   
</li>

</div leftnews>
  
    <?php else : ?>
 
 <div class="rightnews<?php echo $module->id; ?>">
 
    <li class="freshnews<?php echo $module->id; ?>">
 
    <div class="newsbox<?php echo $module->id; ?>">
    
    <div class="newsboximage<?php echo $module->id; ?>">
       <?php if ($patchtoimage == 1) : ?> 
       <div class="imagemorearticle<?php echo $module->id; ?>">   
       <a href="<?php echo $item->link; ?>" target="<?php echo $params->get('linkmoreaerticlestarget'); ?>">
        <img src="<?php echo json_decode($item->images)->image_intro; ?>"   alt="<?php echo htmlspecialchars($images->image_intro_alt); ?>"  title="<?php echo $imagetitle; ?>" style="width:100%; height: <?php echo $params->get('articlesimgheight'); ?>;" />        
        </a>  
        </div imagemorearticle>
        <?php endif; ?>
        
       <?php if ($patchtoimage == 2) : ?> 
       <div class="imagemorearticle<?php echo $module->id; ?>">   
       <a href="<?php echo $item->link; ?>" target="<?php echo $params->get('linkmoreaerticlestarget'); ?>">
        <img src="<?php echo json_decode($item->images)->image_fulltext; ?>"   alt="<?php echo htmlspecialchars($images->image_intro_alt); ?>"  title="<?php echo $imagetitle; ?>" style="width:100%; height: <?php echo $params->get('articlesimgheight'); ?>;" />        
        </a>  
        </div imagemorearticle>
        <?php endif; ?>
        
      <?php if ($patchtoimage == 3) : ?> 
            <?php 
                $matches = null;
                preg_match_all('/<img[^>]+src=([\'"])?((?(1).+?|[^\s>]+))(?(1)\1)/', $item->introtext, $matches);
                if (count($matches[2]) > 0) :
            ?>
                <div class="imagemorearticle<?php echo $module->id; ?>">
                <a href="<?php echo $item->link; ?>" target="<?php echo $params->get('linkmoreaerticlestarget'); ?>">
                    <img src="<?php echo $matches[2][0] ?>" title="<?php echo $imagetitle; ?>" alt="<?php echo $imagetitle; ?>" style="width:100%; height: <?php echo $params->get('articlesimgheight'); ?>;" />
               </a>
                </div imagemorearticle>
            <?php endif; ?>
        <?php endif; ?>
   </div newsboximage>
   
   <div class="newstitle<?php echo $module->id; ?>">
 
       <div class="firstarticletitle<?php echo $module->id; ?>"> <a href="<?php echo $item->link; ?>" target="<?php echo $params->get('linkmoreaerticlestarget'); ?>" title="<?php echo $imagetitle; ?>"><?php if(strlen($item->title) > $limittexttitlearticle) { $item->title = substr($item->title, 0, $limittexttitlearticle)." …";} echo $item->title; ?></a> </div firstarticletitle>

        <?php if ($firstarticleautoronof == 1): ?>
       <div class="firstarticleautor<?php echo $module->id ;?>"> <?php echo $params->get('firstarticleautortext'); ?> <?php echo JText::sprintf($author); ?></div>
      <?php endif; ?>
     <?php if ($artclehitsdateposition == 1): ?>
  <div class="firstarticledatecreate<?php echo $module->id ;?>"> <?php if ($firstarticlehits == 1) : ?><span class="hits<?php echo $module->id; ?>"><?php echo $item->hits; ?></span>  │<?php endif; ?>     <?php if ($firstarticledateupdate == 1) : ?><span class="dateupdate<?php echo $module->id; ?>"><?php echo JHtml::_('date', $item->$dateofarticle, JText::_($firstarticledateformatupdate)); ?></span><?php endif; ?></div>
      <?php endif; ?>
      
     <?php if ($tagsrightarticles == 1): ?>
  <div class="tags<?php echo $module->id ;?>">
  <span><?php echo $params->get('tagsatribute'); ?></span>
 <?php
// set tags
$tags = '';
if (!empty($item->tags->itemTags)) {
    JLoader::register('TagsHelperRoute',JPATH_BASE.'/components/com_tags/helpers/route.php');
    foreach ($item->tags->itemTags as $i => $tag) {
        if (in_array($tag->access,     JAccess::getAuthorisedViewLevels(JFactory::getUser()->get('id')))) {
         if (++$i <= $limitcounttags) $tags .='<a href="'.JRoute::_(TagsHelperRoute::getTagRoute($tag->tag_id.'-'.$tag->alias)).'" target="'.$tagslinktarget.'">'.$tag->title.' | </a>';		   
        }
    }
}
$args['tags'] = $tags;
echo $tags;
?> 
  </div>     
      <?php endif; ?>

   </div newstitle>
 
   </div newsbox>
   
     <?php if ($artclehitsdateposition == 2): ?>
  <div class="firstarticledatecreate<?php echo $module->id ;?>"> <?php if ($firstarticlehits == 1) : ?><span class="hits<?php echo $module->id; ?>"><?php echo $item->hits; ?></span>  │<?php endif; ?>     <?php if ($firstarticledateupdate == 1) : ?><span class="dateupdate<?php echo $module->id; ?>"><?php echo JHtml::_('date', $item->$dateofarticle, JText::_($firstarticledateformatupdate)); ?></span><?php endif; ?></div>
      <?php endif; ?>
   
</li>

</div rightnews>

        <?php endif; ?>
                
  <?php $k++ ; ?>   

<?php endforeach; ?>   

</ul>

<?php if ( 1 == $newsmoduletitleonof ) : ?>
<?php if ($newsmoduletitleposition == 2): ?>
<?php if ($params->get('linktitleurl')) : ?>
<div class="art-ourteamtitle<?php echo $module->id;?>"><div class="art-newsmoduletitle<?php echo $module->id;?>"><h2><a href="<?php echo $params->get('modtitlelinkurl'); ?>" target="<?php echo $params->get('linkmoreaerticlestarget'); ?>"><?php echo $params->get('ourteamtitle'); ?></a></h2></div art-newsmoduletitle></div>
<?php else : ?>
<div class="art-ourteamtitle<?php echo $module->id;?>"><div class="art-newsmoduletitle<?php echo $module->id;?>"><h2><?php echo $params->get('ourteamtitle'); ?></h2></div art-newsmoduletitle></div>
<?php endif; ?>
<?php endif; ?>
<?php endif; ?>
