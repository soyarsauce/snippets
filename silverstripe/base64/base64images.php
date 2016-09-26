<?php
      if ($img->ThumbnailData !== null) {
        $thumbnailData = $img->ThumbnailData;
        $imgString = base64_decode(preg_replace('#^data:image/png;base64,#i', '', $thumbnailData));

        // Get ID and set paths for writing to, and storing in DB
        $id = $img->ID;
        $path = "/Uploads/Thumbnails/".$id.'.png';
        $pathForDb = "assets" . $path;
        file_put_contents(ASSETS_PATH.$path, $imgString);
        $newImg = new Image();
        $newImg->Filename = $pathForDb;
        $newImg->Title = 'Thumbnail-'.$id;
        $newImg->write();
        $img->ThumbnailID = $newImg->ID;
        $img->write();
      }