package ${packageName};

import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public class ${adapterClass} extends RecyclerView.Adapter<${adapterClass}.${itemClass}> {
    
    @Override
    public ${itemClass} onCreateViewHolder(ViewGroup viewGroup, int viewType) {

        View view = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.${layoutItemName}, viewGroup, false);

        return new ${itemClass}(view);
    }

    @Override
    public void onBindViewHolder(${itemClass} itemViewHolder, int position) {

    }

    @Override
    public int getItemCount() {
        return 0;
    }

    public class ${itemClass} extends RecyclerView.ViewHolder {

        public ${itemClass}(View itemView) {
            super(itemView);
        }
    }
}
