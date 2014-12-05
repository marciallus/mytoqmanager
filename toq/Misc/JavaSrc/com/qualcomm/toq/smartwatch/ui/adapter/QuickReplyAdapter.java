// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ui.adapter;

import android.content.Context;
import android.view.*;
import android.widget.*;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.base.utils.ToqData;
import com.qualcomm.toq.smartwatch.utils.QuickReplyMessageObject;
import java.util.ArrayList;

public class QuickReplyAdapter extends BaseAdapter
{
    public static interface QRListAdapterInterface
    {

        public abstract void deleteQRFromTheList(int i);

        public abstract void refreshQuickReplyList();
    }

    class ViewHolder
    {

        ImageView cancelImageView;
        Button deleteButton;
        View divider;
        ImageView dragImageView;
        TextView qrTextView;
        final QuickReplyAdapter this$0;

        ViewHolder()
        {
            this$0 = QuickReplyAdapter.this;
            super();
        }
    }


    static String TAG = "QuickReplyAdapter";
    private QRListAdapterInterface adapterInterface;
    boolean isOtherDeleteButtonVisible;
    private Context mContext;
    private LayoutInflater mInflater;
    private ArrayList mItems;

    public QuickReplyAdapter(Context context, QRListAdapterInterface qrlistadapterinterface, ArrayList arraylist)
    {
        adapterInterface = null;
        isOtherDeleteButtonVisible = false;
        mItems = new ArrayList();
        mItems = arraylist;
        mInflater = LayoutInflater.from(context);
        adapterInterface = qrlistadapterinterface;
        mContext = context;
    }

    public int getCount()
    {
        if (mItems == null)
            return 0;
        else
            return mItems.size();
    }

    public Object getItem(int i)
    {
        return mItems.get(i);
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public ArrayList getUpdateList()
    {
        return mItems;
    }

    public View getView(final int positionDummy, View view, ViewGroup viewgroup)
    {
        View view1 = mInflater.inflate(0x7f030048, null);
        final ViewHolder holder = new ViewHolder();
        if (holder != null)
        {
            holder.qrTextView = (TextView)view1.findViewById(0x7f090249);
            holder.cancelImageView = (ImageView)view1.findViewById(0x7f090247);
            holder.deleteButton = (Button)view1.findViewById(0x7f09024b);
            holder.dragImageView = (ImageView)view1.findViewById(0x7f09008a);
            holder.divider = view1.findViewById(0x7f09024a);
        }
        Log.d(TAG, (new StringBuilder()).append(((QuickReplyMessageObject)mItems.get(positionDummy)).getQRMessage()).append("    isDafault: ").append(((QuickReplyMessageObject)mItems.get(positionDummy)).isDefault()).toString());
        holder.qrTextView.setText(((QuickReplyMessageObject)mItems.get(positionDummy)).getQRMessage());
        holder.dragImageView.setVisibility(0);
        holder.deleteButton.setVisibility(8);
        if (ToqData.getInstance().getRegularTypeFace() != null)
            holder.deleteButton.setTypeface(ToqData.getInstance().getRegularTypeFace());
        holder.cancelImageView.setOnClickListener(new android.view.View.OnClickListener() {

            final QuickReplyAdapter this$0;
            final ViewHolder val$holder;

            public void onClick(View view2)
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
                        adapterInterface.refreshQuickReplyList();
                        isOtherDeleteButtonVisible = false;
                        return;
                    }
                    return;
                } else
                {
                    adapterInterface.refreshQuickReplyList();
                    isOtherDeleteButtonVisible = false;
                    return;
                }
            }

            
            {
                this$0 = QuickReplyAdapter.this;
                holder = viewholder;
                super();
            }
        }
);
        holder.deleteButton.setOnClickListener(new android.view.View.OnClickListener() {

            final QuickReplyAdapter this$0;
            final int val$positionDummy;

            public void onClick(View view2)
            {
                adapterInterface.deleteQRFromTheList(positionDummy);
                isOtherDeleteButtonVisible = false;
            }

            
            {
                this$0 = QuickReplyAdapter.this;
                positionDummy = i;
                super();
            }
        }
);
        holder.divider.setOnClickListener(new android.view.View.OnClickListener() {

            final QuickReplyAdapter this$0;

            public void onClick(View view2)
            {
                adapterInterface.refreshQuickReplyList();
                isOtherDeleteButtonVisible = false;
            }

            
            {
                this$0 = QuickReplyAdapter.this;
                super();
            }
        }
);
        holder.qrTextView.setOnClickListener(new android.view.View.OnClickListener() {

            final QuickReplyAdapter this$0;

            public void onClick(View view2)
            {
                adapterInterface.refreshQuickReplyList();
                isOtherDeleteButtonVisible = false;
            }

            
            {
                this$0 = QuickReplyAdapter.this;
                super();
            }
        }
);
        return view1;
    }

    public void setUpdateList(ArrayList arraylist)
    {
        mItems = arraylist;
    }


}
