package ${packageName}.adapter;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import ${packageName}.bean.ViewItem;
import ${packageName}.holder.BaseViewHolder;
import ${packageName}.type.MultiTypeFactory;
import ${packageName}.type.MultiTypeFactoryImpl;
import java.util.List;


public class ${adapterClass} extends RecyclerView.Adapter<BaseViewHolder> {

    private MultiTypeFactory factory;
    private List<ViewItem> models;

    public ${adapterClass}(List<ViewItem> models) {
        factory = new MultiTypeFactoryImpl();
        this.models = models;
    }

    @Override
    public BaseViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        Context context = parent.getContext();
        View itemView = LayoutInflater.from(context).inflate(viewType, parent, false);
        return factory.createViewHolder(viewType, itemView);
    }

    @Override
    public void onBindViewHolder(BaseViewHolder holder, int position) {
        holder.setUpView(models.get(position), position, this);
    }

    @Override
    public int getItemCount() {
        if (models == null) {
            return 0;
        }
        return models.size();
    }

    @Override
    public int getItemViewType(int position) {
        return models.get(position).type(factory);
    }
}
