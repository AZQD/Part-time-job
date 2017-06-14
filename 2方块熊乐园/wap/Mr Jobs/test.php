<?php 

 header("Content-type: text/html; charset=utf-8");   

// $file=scandir($dir);
// print_r($file);


function searchDir($path,&$data){
	if(is_dir($path)){
		$dp=dir($path);
		while($file=$dp->read()){
		if($file!='.'&& $file!='..'){
			searchDir($path.'/'.$file,$data);
		}
		}
		$dp->close();
	}
	if(is_file($path)){
		$data[]=$path;
	}
}

function getDir($dir){
	$data=array();
	searchDir($dir,$data);
	return   $data;
}

function post($url, $post_data = '', $timeout = 25){//curl
        $ch = curl_init();
        curl_setopt ($ch, CURLOPT_URL, $url);
        curl_setopt ($ch, CURLOPT_POST, 1);
        if($post_data != ''){
            curl_setopt($ch, CURLOPT_POSTFIELDS, $post_data);
        }
        curl_setopt ($ch, CURLOPT_RETURNTRANSFER, 1); 
        curl_setopt ($ch, CURLOPT_CONNECTTIMEOUT, $timeout);
        curl_setopt($ch, CURLOPT_HEADER, false);
        $file_contents = curl_exec($ch);
        curl_close($ch);
        return $file_contents;
 }

/***翻译一组数据***/
function translate($data){
	$translateText="";
	foreach ($data as $k => $v) {
		$translateText.="$v"."\n";
	}
	$url="http://www.tastemylife.com/gtr.php";
	// echo "翻译内容：".$translateText;
	$postData=array(
		"sl"=>"zh-CN",
		"tl"=>"en",
		"p"=>"1",
		"q"=>$translateText
	);
	$result=post($url,$postData);
	// echo $result;
	$result=json_decode($result,true);
	$result=explode("\\n", $result['result']);//将数据还原
	// print_r($result);
	$resultData=[];
	if(count($result) == count($data)){
		foreach ($result as $key => $value) {
			$result[$key]=" ".$value." ";
		}
		$resultData=$result;
		// foreach ($data as $k => $v) {
		// 	$resultData[$k]=array(
		// 			"zh"=>$v,
		// 			"en"=>$result[$k],
		// 		);
		// }
	}
	// print_r($resultData);
	return $resultData;
}
// translate(array("爱","恨"));


/***传入文件名，翻译该文件中的中文***/
function file_translate($fileName){
	$fileContent = file_get_contents($fileName);//将整个文件内容读入到一个字符串中
	// echo $fileContent;

	$transcontent=preg_replace("(<qscms.*)","",$fileContent); //先去掉pscms标签
	$transcontent=preg_replace("<!--.+-->","",$transcontent); //先去掉pscms标签

	// echo $transcontent;die;

	preg_match_all("/([\x{4e00}-\x{9fa5}]+)/u",$transcontent,$hanzis);//获取汉字
	// print_r($hanzis[0]);die;
	$en=translate($hanzis[0]);//翻译内容

	//echo $fileContent;
	$fileContent=str_replace($hanzis[0], $en, $fileContent);
	// $fileContent=preg_replace("/([\x{4e00}-\x{9fa5}]+)/u","",$fileContent); //防止意外中文
	return $fileContent;
}
/**文件夹翻译***/
function dir_translate($dir){
	$files=getDir($dir);
	foreach ($files as $k => $v) {
		// if($k == 1){
			echo "文件：".$v;
			$fileContent=file_translate($v);//获取翻译后的文字
			$myfile = fopen($v, "w");
			fwrite($myfile, $fileContent);
		 // }
	}
}
set_time_limit(0);
$dir="Application\Home\View\default";
dir_translate($dir);
?>