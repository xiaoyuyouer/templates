package ${packageName}.type;

import android.view.View;
import ${packageName}.bean.ItemA;
import ${packageName}.bean.ItemB;
import ${packageName}.bean.ItemC;
import ${packageName}.holder.BaseViewHolder;


public interface MultiTypeFactory {

    int type(ItemA itemA);

    int type(ItemB itemB);

    int type(ItemC itemC);

    BaseViewHolder createViewHolder(int type, View itemView);
}
