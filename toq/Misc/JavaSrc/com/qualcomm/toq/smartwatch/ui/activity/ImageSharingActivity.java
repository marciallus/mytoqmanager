// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ui.activity;

import android.app.Activity;
import android.app.Dialog;
import android.content.*;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.graphics.*;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.provider.DocumentsContract;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.*;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.service.AmbientIntentService;
import java.io.ByteArrayOutputStream;

public class ImageSharingActivity extends Activity
{

    private static final boolean DEBUG = true;
    private static int GALLERY_INTENT_NEW = 0;
    private static int GALLERY_INTENT_OLD = 0;
    private static int MAX_IMAGES_COUNT = 0;
    private static final String TAG = "ImageSharingActivity";
    private static final int WD_FIXED_HEIGHT = 192;
    private static final int WD_FIXED_WIDTH = 288;
    private ToggleButton aspectRatioToggleBtn;
    private TextView imageCountView;
    private android.view.View.OnClickListener imageSelectionListener;
    private Button imgSelectionBtn;
    private boolean isDitheringEnabled;
    private Dialog mImageDialog;
    private ListView mImageListView;
    private Bitmap scaledBitmap;

    public ImageSharingActivity()
    {
        isDitheringEnabled = false;
    }

    private ToggleButton getAspectRatioBtn()
    {
        if (aspectRatioToggleBtn == null)
            aspectRatioToggleBtn = (ToggleButton)findViewById(0x7f0901cd);
        return aspectRatioToggleBtn;
    }

    public static String getDataColumn(Context context, Uri uri, String s, String as[])
    {
        Cursor cursor;
        String as1[];
        cursor = null;
        as1 = (new String[] {
            "_data"
        });
        cursor = context.getContentResolver().query(uri, as1, s, as, null);
        if (cursor == null)
            break MISSING_BLOCK_LABEL_82;
        String s1;
        if (!cursor.moveToFirst())
            break MISSING_BLOCK_LABEL_82;
        DatabaseUtils.dumpCursor(cursor);
        s1 = cursor.getString(cursor.getColumnIndexOrThrow("_data"));
        if (cursor != null)
            cursor.close();
        return s1;
        if (cursor != null)
            cursor.close();
        return null;
        Exception exception;
        exception;
        if (cursor != null)
            cursor.close();
        throw exception;
    }

    private TextView getImageCountView()
    {
        if (imageCountView == null)
            imageCountView = (TextView)findViewById(0x7f0901cf);
        return imageCountView;
    }

    private Button getImageSelectionButton()
    {
        if (imgSelectionBtn == null)
            imgSelectionBtn = (Button)findViewById(0x7f0901ce);
        return imgSelectionBtn;
    }

    private Dialog getPreviewDialog()
    {
        if (mImageDialog == null)
        {
            mImageDialog = new Dialog(this);
            View view = getLayoutInflater().inflate(0x7f030033, null);
            mImageDialog.requestWindowFeature(1);
            mImageDialog.setContentView(view);
            ToggleButton togglebutton = (ToggleButton)view.findViewById(0x7f0901d3);
            isDitheringEnabled = true;
            togglebutton.setChecked(true);
        }
        return mImageDialog;
    }

    private void initializeListener()
    {
        imageSelectionListener = new android.view.View.OnClickListener() {

            final ImageSharingActivity this$0;

            public void onClick(View view)
            {
                launchGallery();
            }

            
            {
                this$0 = ImageSharingActivity.this;
                super();
            }
        }
;
    }

    private void launchGallery()
    {
        Intent intent = new Intent();
        intent.setType("image/jpeg");
        intent.setAction("android.intent.action.GET_CONTENT");
        startActivityForResult(Intent.createChooser(intent, "Select Image"), GALLERY_INTENT_OLD);
    }

    private Bitmap scaleImage(Bitmap bitmap, int i, int j)
    {
        int k = bitmap.getWidth();
        int l = bitmap.getHeight();
        Log.i("ImageSharingActivity", (new StringBuilder()).append("h=").append(i).append(" dptopx h=").append(i).append(" w=").append(j).append(" dptopx w=").append(j).toString());
        Log.i("ImageSharingActivity", (new StringBuilder()).append("original width = ").append(Integer.toString(k)).toString());
        Log.i("ImageSharingActivity", (new StringBuilder()).append("original height = ").append(Integer.toString(l)).toString());
        Log.i("ImageSharingActivity", (new StringBuilder()).append("h_bounding = ").append(Integer.toString(i)).toString());
        Log.i("ImageSharingActivity", (new StringBuilder()).append("w_bounding = ").append(Integer.toString(j)).toString());
        float f = (float)j / (float)k;
        float f1 = (float)i / (float)l;
        float f2;
        if (f <= f1)
            f2 = f;
        else
            f2 = f1;
        Log.i("ImageSharingActivity", (new StringBuilder()).append("xScale = ").append(Float.toString(f)).toString());
        Log.i("ImageSharingActivity", (new StringBuilder()).append("yScale = ").append(Float.toString(f1)).toString());
        Log.i("ImageSharingActivity", (new StringBuilder()).append("scale = ").append(Float.toString(f2)).toString());
        Matrix matrix = new Matrix();
        matrix.postScale(f2, f2);
        Bitmap bitmap1 = Bitmap.createBitmap(bitmap, 0, 0, k, l, matrix, true);
        int i1 = bitmap1.getWidth();
        int j1 = bitmap1.getHeight();
        Log.i("ImageSharingActivity", (new StringBuilder()).append("scaled width = ").append(Integer.toString(i1)).toString());
        Log.i("ImageSharingActivity", (new StringBuilder()).append("scaled height = ").append(Integer.toString(j1)).toString());
        return bitmap1;
    }

    private void updateImageCount(int i)
    {
        if (i > 0)
        {
            String s = (new StringBuilder()).append(i).append(" Images uploaded out of").append(MAX_IMAGES_COUNT).append("Images").toString();
            getImageCountView().setText(s);
            return;
        } else
        {
            getImageCountView().setText("Images are not uploaded to WD");
            return;
        }
    }

    public void deleteAllSharedImages(View view)
    {
        Log.e("ImageSharingActivity", "delete all Images");
    }

    public String getPath(Uri uri)
    {
        Log.d("ImageSharingActivity File -", (new StringBuilder()).append("Authority: ").append(uri.getAuthority()).append(", Fragment: ").append(uri.getFragment()).append(", Port: ").append(uri.getPort()).append(", Query: ").append(uri.getQuery()).append(", Scheme: ").append(uri.getScheme()).append(", Host: ").append(uri.getHost()).append(", Segments: ").append(uri.getPathSegments().toString()).toString());
        boolean flag;
        if (android.os.Build.VERSION.SDK_INT >= 19)
            flag = true;
        else
            flag = false;
        String s;
        if (flag && DocumentsContract.isDocumentUri(this, uri))
        {
            if ("com.android.externalstorage.documents".equals(uri.getAuthority()))
            {
                String as2[] = DocumentsContract.getDocumentId(uri).split(":");
                boolean flag4 = "primary".equalsIgnoreCase(as2[0]);
                s = null;
                if (flag4)
                    s = (new StringBuilder()).append(Environment.getExternalStorageDirectory()).append("/").append(as2[1]).toString();
            } else
            {
                if ("com.android.providers.downloads.documents".equals(uri.getAuthority()))
                {
                    String s2 = DocumentsContract.getDocumentId(uri);
                    return getDataColumn(this, ContentUris.withAppendedId(Uri.parse("content://downloads/public_downloads"), Long.valueOf(s2).longValue()), null, null);
                }
                boolean flag2 = "com.android.providers.media.documents".equals(uri.getAuthority());
                s = null;
                if (flag2)
                {
                    String as[] = DocumentsContract.getDocumentId(uri).split(":");
                    String s1 = as[0];
                    Uri uri1;
                    if ("image".equals(s1))
                        uri1 = android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                    else
                    if ("video".equals(s1))
                    {
                        uri1 = android.provider.MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                    } else
                    {
                        boolean flag3 = "audio".equals(s1);
                        uri1 = null;
                        if (flag3)
                            uri1 = android.provider.MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
                    }
                    String as1[] = new String[1];
                    as1[0] = as[1];
                    return getDataColumn(this, uri1, "_id=?", as1);
                }
            }
        } else
        {
            if ("content".equalsIgnoreCase(uri.getScheme()))
                if ("com.google.android.apps.photos.content".equals(uri.getAuthority()))
                    return uri.getLastPathSegment();
                else
                    return getDataColumn(this, uri, null, null);
            boolean flag1 = "file".equalsIgnoreCase(uri.getScheme());
            s = null;
            if (flag1)
                return uri.getPath();
        }
        return s;
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        if (j == -1 && intent != null)
        {
            Uri uri;
            if (i == GALLERY_INTENT_OLD)
            {
                uri = intent.getData();
                Log.e("ImageSharingActivity", (new StringBuilder()).append(" OLD URI == ").append(uri).toString());
            } else
            {
                int k = GALLERY_INTENT_NEW;
                uri = null;
                if (i == k)
                {
                    uri = intent.getData();
                    int l = 3 & intent.getFlags();
                    getContentResolver().takePersistableUriPermission(uri, l);
                    Log.e("ImageSharingActivity", (new StringBuilder()).append(" new URI == ").append(uri).toString());
                }
            }
            if (uri != null && getPreviewDialog() != null)
            {
                ((Button)getPreviewDialog().findViewById(0x7f0901d4)).setTag(uri);
                ImageView imageview = (ImageView)getPreviewDialog().findViewById(0x7f0901d2);
                Button button = (Button)getPreviewDialog().findViewById(0x7f0901d4);
                Log.e("ImageSharingActivity", (new StringBuilder()).append("originalUri path = ").append(uri.toString()).toString());
                String s = getPath(uri);
                button.setTag(s);
                Log.e("ImageSharingActivity", (new StringBuilder()).append("img path = ").append(s).toString());
                if (s == null)
                {
                    Toast.makeText(this, "Invalid file path, Please use some other application to select image.", 1).show();
                    return;
                }
                Bitmap bitmap = BitmapFactory.decodeFile(s);
                if (bitmap != null)
                {
                    scaledBitmap = null;
                    if (!getAspectRatioBtn().isChecked())
                    {
                        Log.e("ImageSharingActivity", "Maintain orginal aspect ratio");
                        scaledBitmap = scaleImage(bitmap, 192, 288);
                    } else
                    {
                        Log.e("ImageSharingActivity", "Aspect ratio as per SmartWatch");
                        scaledBitmap = Bitmap.createScaledBitmap(bitmap, 288, 192, false);
                    }
                    imageview.setImageBitmap(scaledBitmap);
                    getPreviewDialog().show();
                    return;
                } else
                {
                    Toast.makeText(this, "Invalid file, Please select proper image file", 1).show();
                    return;
                }
            }
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030032);
        mImageListView = (ListView)findViewById(0x7f0901d0);
        mImageListView.setVisibility(8);
        getAspectRatioBtn().setChecked(false);
        initializeListener();
        getImageSelectionButton().setOnClickListener(imageSelectionListener);
        updateImageCount(0);
    }

    protected void onDestroy()
    {
        super.onDestroy();
        mImageDialog = null;
        mImageListView = null;
    }

    public void onOrginalAspectRaioToggleClicked(View view)
    {
        Log.e("ImageSharingActivity", (new StringBuilder()).append(" orginal Aspect ratio ").append(((ToggleButton)view).isChecked()).toString());
        if (((ToggleButton)view).isChecked())
        {
            ((ToggleButton)view).setChecked(true);
            return;
        } else
        {
            ((ToggleButton)view).setChecked(false);
            return;
        }
    }

    protected void onResume()
    {
        super.onResume();
    }

    protected void onStart()
    {
        super.onStart();
    }

    public void onToggleClicked(View view)
    {
        Log.e("ImageSharingActivity", (new StringBuilder()).append(" onToggleClicked ").append(((ToggleButton)view).isChecked()).toString());
        if (((ToggleButton)view).isChecked())
        {
            ((ToggleButton)view).setChecked(true);
            isDitheringEnabled = true;
            return;
        } else
        {
            ((ToggleButton)view).setChecked(false);
            isDitheringEnabled = false;
            return;
        }
    }

    public void shareImageToWD(View view)
    {
        String s = view.getTag().toString();
        if (scaledBitmap != null)
        {
            Intent intent = new Intent(this, com/qualcomm/toq/smartwatch/service/AmbientIntentService);
            intent.putExtra("service_task", "share_image_to_wd");
            ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
            scaledBitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, 100, bytearrayoutputstream);
            byte abyte0[] = bytearrayoutputstream.toByteArray();
            intent.putExtra("file_path", s);
            intent.putExtra("image_data", abyte0);
            intent.putExtra("dithering", isDitheringEnabled);
            if (getPreviewDialog().isShowing())
                getPreviewDialog().dismiss();
            Toast.makeText(getBaseContext(), getString(0x7f0a01d5), 1).show();
            startService(intent);
        }
    }

    static 
    {
        MAX_IMAGES_COUNT = 100;
        GALLERY_INTENT_OLD = 111;
        GALLERY_INTENT_NEW = 112;
    }

}
