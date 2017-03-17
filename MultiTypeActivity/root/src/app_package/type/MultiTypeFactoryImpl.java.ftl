package ${packageName}.type;

import android.view.View;
import ${packageName}.R;
import ${packageName}.bean.ItemA;
import ${packageName}.bean.ItemB;
import ${packageName}.bean.ItemC;
import ${packageName}.holder.BaseViewHolder;
import ${packageName}.holder.ItemAViewHolder;
import ${packageName}.holder.ItemBViewHolder;
import ${packageName}.holder.ItemCViewHolder;


public class MultiTypeFactoryImpl implements MultiTypeFactory {

    private final int TYPE_ITEM_A = R.layout.layout_item_a;
    private final int TYPE_ITEM_B = R.layout.layout_item_b;
    private final int TYPE_ITEM_C = R.layout.layout_item_c;

    @Override
    public int type(ItemA itemA) {
        return TYPE_ITEM_A;
    }

    @Override
    public int type(ItemB itemB) {
        return TYPE_ITEM_B;
    }

    @Override
    public int type(ItemC itemC) {
        return TYPE_ITEM_C;
    }

    @Override
    public BaseViewHolder createViewHolder(int type, View itemView) {
        BaseViewHolder viewHolder = null;
        switch (type) {
            case TYPE_ITEM_A:
                viewHolder = new ItemAViewHolder(itemView);
                break;
            case TYPE_ITEM_B:
                viewHolder = new ItemBViewHolder(itemView);
                break;
            case TYPE_ITEM_C:
                viewHolder = new ItemCViewHolder(itemView);
                break;
            default:
                break;
        }
        return viewHolder;
    }
}
