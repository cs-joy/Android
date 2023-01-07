package com.neutral_network.materialdesign;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;

import java.util.ArrayList;

public class ContactRecViewAdapterWithCardView extends RecyclerView.Adapter<ContactRecViewAdapterWithCardView.ViewHolder> {

    private ArrayList<Contact> contacts = new ArrayList<>();

    private Context context;

    public ContactRecViewAdapterWithCardView(Context context) {
        this.context = context;
    }

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.contacts_list_item, parent, false);
        ViewHolder holder = new ViewHolder(view);
        return holder;
    }

    @Override
    public void onBindViewHolder(@NonNull ViewHolder holder, @SuppressLint("RecyclerView") int position) {
        holder.txtName.setText(contacts.get(position).getName());
        holder.txtEmail.setText(contacts.get(position).getEmail());

        // click listener
        holder.contact_parent_cardview.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(context, contacts.get(position).getName() + " Clicked", Toast.LENGTH_SHORT).show();
            }
        });
    }

    @Override
    public int getItemCount() {
        return contacts.size();
    }

    public void setContacts(ArrayList<Contact> contacts) {
        this.contacts = contacts;
        notifyDataSetChanged(); // each time change the value of our contacts from the array list Recycler View notify us
    }

    public class ViewHolder extends RecyclerView.ViewHolder {

        private CardView contact_parent_cardview;
        private TextView txtName, txtEmail;

        public ViewHolder(@NonNull View itemView) {
            super(itemView);

            contact_parent_cardview = itemView.findViewById(R.id.contact_parent_cardview);
            txtName = itemView.findViewById(R.id.txtName);
            txtEmail = itemView.findViewById(R.id.txtEmail);
        }
    }
}
