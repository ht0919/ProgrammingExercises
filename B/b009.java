import java.io.BufferedReader;
import java.io.InputStreamReader;

public class /*Main*/ b009 {

    // ����60�ȏ�̏ꍇ�Ɏ��Ԃ��J��グ�郁�\�b�h
    static int[] timeAdj(int[] hm) {
        if (hm[1] > 59) {
            hm[0] += hm[1] / 60;
            hm[1]  = hm[1] % 60;
        }
        return hm;
    }

    public static void main(String args[] ) throws Exception {

        int[] st = {10,0}; // �J�n����(��,��)
        int[] et = {10,0}; // �I������(��,��)
        boolean lunch = false;

        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        String tmp = br.readLine();
        tmp = tmp.trim();
        int n = Integer.parseInt(tmp);
        for (int i=0; i<n; i++) {

            // �f�[�^����(���O ����[��])
            tmp = br.readLine();
            tmp = tmp.trim();
            String[] tmpArray = tmp.split(" ");
            String name = tmpArray[0];
            int minutes = Integer.parseInt(tmpArray[1]);

            // �I�������̐ݒ�
            et[0] = st[0];
            et[1] = st[1] + minutes;
            et = timeAdj(et);
    
            // �I��������12:01�ȍ~�Ȃ璋�x�݂����
            if (lunch == false && et[0] >= 12 && et[1] >= 1) {
                // �J�n�����̍X�V
                st[1] += 50; // ���ł�10���x�e���Ă���̂�50���𑫂�
                st = timeAdj(st);
                // �I�������̍X�V
                et[0] = st[0];
                et[1] = st[1] + minutes;
                et = timeAdj(et);
                lunch = true; // ���x�݂�1�񂾂��Ȃ̂Ńt���O��ON�ɂ���
            }

            System.out.printf("%02d:%02d - %02d:%02d %s\n",st[0],st[1],et[0],et[1],name);

            // �x�e��10������Ď��̊J�n�������X�V
            et[1] += 10;
            et = timeAdj(et);
            st[0] = et[0];
            st[1] = et[1];
        }
    }
}
