package com.neutral_network.materialdesign;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import java.util.ArrayList;

public class ContactsRecViewAdapter extends RecyclerView.Adapter<ContactsRecViewAdapter.ViewHolder> {

    private ArrayList<Contact> contacts = new ArrayList<>();

    public ContactsRecViewAdapter() {
    }

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        return null;
    }

    @Override
    public void onBindViewHolder(@NonNull ViewHolder holder, int position) {

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

        private TextView txtView;

        public ViewHolder(@NonNull View itemView) {
            super(itemView);

            txtView = itemView.findViewById(R.id.txtView);
        }
    }
}
