// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ui.adapter;

import android.content.Context;
import android.view.*;
import android.widget.*;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.base.utils.ToqData;
import com.qualcomm.toq.smartwatch.utils.AppletDetails;
import java.util.ArrayList;
import java.util.List;

public class AppletMenuAdapter extends BaseAdapter
{
    public static interface AppletMenuAdapterInterface
    {

        public abstract void deleteAppFromTheList(int i);

        public abstract void refreshAppletMenuList();
    }

    class ViewHolder
    {

        ImageView appIconView;
        TextView appTitleTextView;
        ImageView cancelImageView;
        Button deleteButton;
        View divider;
        ImageView dragImageView;
        final AppletMenuAdapter this$0;

        ViewHolder()
        {
            this$0 = AppletMenuAdapter.this;
            super();
        }
    }


    private static final String TAG = "AppletMenuAdapter";
    private AppletMenuAdapterInterface adapterInterface;
    boolean isOtherDeleteButtonVisible;
    private LayoutInflater mInflater;
    private List mListItems;

    public AppletMenuAdapter(Context context, AppletMenuAdapterInterface appletmenuadapterinterface)
    {
        adapterInterface = null;
        isOtherDeleteButtonVisible = false;
        mListItems = new ArrayList();
        mInflater = LayoutInflater.from(context);
        adapterInterface = appletmenuadapterinterface;
    }

    public int getCount()
    {
        if (mListItems == null)
            return 0;
        else
            return mListItems.size();
    }

    public Object getItem(int i)
    {
        return null;
    }

    public long getItemId(int i)
    {
        return 0L;
    }

    public View getView(final int appletposition, View view, ViewGroup viewgroup)
    {
        Log.i("AppletMenuAdapter", "-----------------Applet Menu Adapter----------");
        final ViewHolder holder;
        if (view == null)
        {
            view = mInflater.inflate(0x7f030048, null);
            holder = new ViewHolder();
            holder.appTitleTextView = (TextView)view.findViewById(0x7f090249);
            holder.appTitleTextView.setSingleLine();
            holder.appTitleTextView.setEllipsize(android.text.TextUtils.TruncateAt.END);
            holder.appTitleTextView.setTextSize(20F);
            holder.appIconView = (ImageView)view.findViewById(0x7f090248);
            holder.cancelImageView = (ImageView)view.findViewById(0x7f090247);
            holder.deleteButton = (Button)view.findViewById(0x7f09024b);
            holder.dragImageView = (ImageView)view.findViewById(0x7f09008a);
            holder.divider = view.findViewById(0x7f09024a);
            view.setTag(holder);
        } else
        {
            holder = (ViewHolder)view.getTag();
        }
        if (mListItems != null && mListItems.size() > appletposition)
        {
            holder.appTitleTextView.setText(((AppletDetails)mListItems.get(appletposition)).getAppName());
            holder.appIconView.setImageDrawable(((AppletDetails)mListItems.get(appletposition)).getAppIcon());
        }
        holder.appIconView.setVisibility(0);
        holder.dragImageView.setVisibility(0);
        holder.deleteButton.setVisibility(8);
        if (ToqData.getInstance().getRegularTypeFace() != null)
            holder.deleteButton.setTypeface(ToqData.getInstance().getRegularTypeFace());
        holder.cancelImageView.setOnClickListener(new android.view.View.OnClickListener() {

            final AppletMenuAdapter this$0;
            final ViewHolder val$holder;

            public void onClick(View view1)
            {
                if (!isOtherDeleteButtonVisible)
                {
                    if (holder.deleteButton.getVisibility() == 8)
                    {
                        holder.dragImageView.setVisibility(8);
                        holder.deleteButton.setVisibility(0);
                        isOtherDeleteButtonVisible = true;
                    } else
                    if (holder.deleteButton.getVisibility() == 0)
                    {
                        adapterInterface.refreshAppletMenuList();
                        isOtherDeleteButtonVisible = false;
                        return;
                    }
                    return;
                } else
                {
                    adapterInterface.refreshAppletMenuList();
                    isOtherDeleteButtonVisible = false;
                    return;
                }
            }

            
            {
                this$0 = AppletMenuAdapter.this;
                holder = viewholder;
                super();
            }
        }
);
        holder.deleteButton.setOnClickListener(new android.view.View.OnClickListener() {

            final AppletMenuAdapter this$0;
            final int val$appletposition;

            public void onClick(View view1)
            {
                adapterInterface.deleteAppFromTheList(appletposition);
                isOtherDeleteButtonVisible = false;
            }

            
            {
                this$0 = AppletMenuAdapter.this;
                appletposition = i;
                super();
            }
        }
);
        holder.divider.setOnClickListener(new android.view.View.OnClickListener() {

            final AppletMenuAdapter this$0;

            public void onClick(View view1)
            {
                adapterInterface.refreshAppletMenuList();
                isOtherDeleteButtonVisible = false;
            }

            
            {
                this$0 = AppletMenuAdapter.this;
                super();
            }
        }
);
        holder.appTitleTextView.setOnClickListener(new android.view.View.OnClickListener() {

            final AppletMenuAdapter this$0;

            public void onClick(View view1)
            {
                adapterInterface.refreshAppletMenuList();
                isOtherDeleteButtonVisible = false;
            }

            
            {
                this$0 = AppletMenuAdapter.this;
                super();
            }
        }
);
        holder.appIconView.setOnClickListener(new android.view.View.OnClickListener() {

            final AppletMenuAdapter this$0;

            public void onClick(View view1)
            {
                adapterInterface.refreshAppletMenuList();
                isOtherDeleteButtonVisible = false;
            }

            
            {
                this$0 = AppletMenuAdapter.this;
                super();
            }
        }
);
        return view;
    }

    public void updateAppletMenuList(List list)
    {
        mListItems = list;
    }

}
