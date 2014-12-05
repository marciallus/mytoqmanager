// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ui.adapter;

import android.content.Context;
import android.view.*;
import android.widget.*;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.base.utils.ToqData;
import java.util.ArrayList;

public class StockListAdapter extends BaseAdapter
{
    public static interface AdapterInterface
    {

        public abstract void deleteStock(int i);

        public abstract void refreshList();
    }

    private class ViewHolder
    {

        Button delete;
        public View divider;
        ImageView dragImage;
        View emptyView;
        LinearLayout layout;
        final StockListAdapter this$0;
        TextView tvName1;
        TextView tvName2;
        ImageView view;

        private ViewHolder()
        {
            this$0 = StockListAdapter.this;
            super();
        }

    }


    private static final String TAG = "AmbientListAdapter";
    final String CLICKED = "clicked";
    final String UNCLICKED = "unclicked";
    private AdapterInterface activityRef;
    private ArrayList ambientList;
    int deleteSelectedPosition;
    boolean isDeleteVisible;
    private LayoutInflater mInflater;

    public StockListAdapter(Context context, AdapterInterface adapterinterface)
    {
        activityRef = null;
        deleteSelectedPosition = 100;
        isDeleteVisible = false;
        mInflater = LayoutInflater.from(context);
        activityRef = adapterinterface;
    }

    public int getCount()
    {
        if (ambientList == null)
            return 0;
        else
            return ambientList.size();
    }

    public Object getItem(int i)
    {
        return Integer.valueOf(i);
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public String getStringAtPosition(int i)
    {
        return (String)ambientList.get(i);
    }

    public View getView(final int stock_position, View view, ViewGroup viewgroup)
    {
        Log.i("AmbientListAdapter", "-----------------AmbientListAdapter----------");
        final ViewHolder holder;
        if (view == null)
        {
            view = mInflater.inflate(0x7f030010, null);
            holder = new ViewHolder();
            holder.tvName1 = (TextView)view.findViewById(0x7f090099);
            holder.tvName2 = (TextView)view.findViewById(0x7f09009a);
            holder.view = (ImageView)view.findViewById(0x7f090086);
            holder.dragImage = (ImageView)view.findViewById(0x7f09008a);
            holder.divider = view.findViewById(0x7f090043);
            holder.delete = (Button)view.findViewById(0x7f090089);
            holder.layout = (LinearLayout)view.findViewById(0x7f090098);
            holder.emptyView = view.findViewById(0x7f09009c);
            view.setTag(holder);
        } else
        {
            holder = (ViewHolder)view.getTag();
        }
        if (ToqData.getInstance().getRegularTypeFace() != null)
            holder.delete.setTypeface(ToqData.getInstance().getRegularTypeFace());
        isDeleteVisible = false;
        String as[] = ((String)ambientList.get(stock_position)).split(",");
        if (as.length >= 1 && as[0] != null)
            holder.tvName1.setText(as[0]);
        if (as.length == 2 && as[1] != null)
            holder.tvName2.setText(as[1]);
        holder.view.setOnClickListener(new android.view.View.OnClickListener() {

            final StockListAdapter this$0;
            final ViewHolder val$holder;

            public void onClick(View view1)
            {
                Log.i("AmbientListAdapter", "X button got clicked");
                if (!isDeleteVisible)
                {
                    Log.i("AmbientListAdapter", "Enabling Delete");
                    isDeleteVisible = true;
                    holder.delete.setVisibility(0);
                    holder.dragImage.setVisibility(8);
                } else
                {
                    isDeleteVisible = false;
                    activityRef.refreshList();
                }
                Log.i("AmbientListAdapter", (new StringBuilder()).append("After click:   ").append(isDeleteVisible).toString());
            }

            
            {
                this$0 = StockListAdapter.this;
                holder = viewholder;
                super();
            }
        }
);
        holder.delete.setOnClickListener(new android.view.View.OnClickListener() {

            final StockListAdapter this$0;
            final int val$stock_position;

            public void onClick(View view1)
            {
                Log.i("AmbientListAdapter", " DELETE BUTTON clicked");
                Log.i("AmbientListAdapter", (new StringBuilder()).append("----- stock_position is ").append(stock_position).toString());
                isDeleteVisible = false;
                activityRef.deleteStock(stock_position);
            }

            
            {
                this$0 = StockListAdapter.this;
                stock_position = i;
                super();
            }
        }
);
        holder.layout.setOnClickListener(new android.view.View.OnClickListener() {

            final StockListAdapter this$0;

            public void onClick(View view1)
            {
                Log.i("AmbientListAdapter", (new StringBuilder()).append("Layout got clicked: ").append(isDeleteVisible).toString());
                if (isDeleteVisible)
                {
                    isDeleteVisible = false;
                    activityRef.refreshList();
                }
            }

            
            {
                this$0 = StockListAdapter.this;
                super();
            }
        }
);
        holder.divider.setOnClickListener(new android.view.View.OnClickListener() {

            final StockListAdapter this$0;

            public void onClick(View view1)
            {
                Log.i("AmbientListAdapter", (new StringBuilder()).append("Divider got clicked: ").append(isDeleteVisible).toString());
                if (isDeleteVisible)
                {
                    isDeleteVisible = false;
                    activityRef.refreshList();
                }
            }

            
            {
                this$0 = StockListAdapter.this;
                super();
            }
        }
);
        holder.emptyView.setOnClickListener(new android.view.View.OnClickListener() {

            final StockListAdapter this$0;

            public void onClick(View view1)
            {
                Log.i("AmbientListAdapter", (new StringBuilder()).append("Empty got clicked: ").append(isDeleteVisible).toString());
                if (isDeleteVisible)
                {
                    isDeleteVisible = false;
                    activityRef.refreshList();
                }
            }

            
            {
                this$0 = StockListAdapter.this;
                super();
            }
        }
);
        holder.dragImage.setVisibility(0);
        holder.delete.setVisibility(8);
        return view;
    }

    public void setLists(ArrayList arraylist)
    {
        ambientList = arraylist;
    }

    public void setUpdateList(ArrayList arraylist)
    {
        ambientList = arraylist;
    }

}
