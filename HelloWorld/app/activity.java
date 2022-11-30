import android.view.View
import android.widget.TextView
import android.widget.EditText

public void onBtnClick(View view){
    TextView txtHello = findViewById(R.id.txtMessage);
    EditView edtTxtName = findViewById(R.id.edtTxtName);
    
    String user = edtTxtName.getText().toString();
    
    txtHello.setText("Hello, " + user);
}
