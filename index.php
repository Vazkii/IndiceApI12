<html>

<head>
	<title>Indíce ApI 12ºA/B</title>
	<link rel="stylesheet" href="style.css"></link>
	<link rel="stylesheet" href="shjs-style.css"></link>
	<script src="shjs-main-min.js"></script>
	<script src="shjs-pascal-min.js"></script>
</head>

<body>
	<div id="left">
		<div id="left-inside">
			<h1>Indíce ApI 12ºA/B</h1>
			<?php
				iterateOn('.');
				
				function iterateOn($dir) {
					$files = scandir($dir);
					sort($files);
					foreach($files as $file) {
						if(strlen($file) > 2 && (strpos($file, '.pas') != 0 || strpos($file, '.') == 0)) {
								$utf8_file = utf8_encode($file);
								$href = "$dir/$file";
								if(strpos($file, '.') == 0) {
									echo("<div class='dir'><b>$utf8_file</b><div class='dir-contents'>");
									iterateOn($href);
									echo('</div></div>');
							} else {
								$inside = writeHiddenContents($href);
								echo("<div class='file' file='$file'>$file<pre class='contents'>$inside</pre></div>"); 
							}
						}	
					}
				}
				
				function writeHiddenContents($file) {
					return utf8_encode(file_get_contents($file));
				}
			?>
			<br>Powered by <a href="http://shjs.sourceforge.net/">shjs</a> | src @ <a href="https://github.com/Vazkii/IndiceApI12">github</a>
		</div>
	</div>

	<div id="right">
		<div id="right-inside">
			<div id="file-header"></div>
			<pre class="sh_pascal" id="src">
			</pre>
		</div>
	</div>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="pasindex.js"></script>
</body>

</html>