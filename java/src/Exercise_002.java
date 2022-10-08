public class Exercise_002 {
    public static void main(String[] args) {
        printInfoWithPrintln();
        
        printInfoWithBreakLineCharacter();
    }

    /**
     * Hàm in thông tin ra màn hình console sử dụng println().
     */
    static void printInfoWithPrintln() {
        System.out.println("--- In thông tin dùng println() ---");
        System.out.println("Tên tôi là: bumbi");
        System.out.println("Ngày sinh: 09/06/2022");
        System.out.println("Màu sắc tôi yêu thích là: màu tím");
    }

    /**
     * Hàm in thong tin ra màn hình console sử dụng kí tự "\n".
     */
    static void printInfoWithBreakLineCharacter() {
        System.out.println("\n--- In thông tin dùng ký tự \"\\n\" ---");
        System.out.print("Tên tôi là: bumbi\nNgày sinh: 09/06/2022\nMàu sắc tôi yêu thích là: màu tím");
    }
}
