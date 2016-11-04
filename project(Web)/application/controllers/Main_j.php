<?php

//defined('BASEPATH') OR exit('No direct script access allowed');

class Main_j extends CI_Controller
{

    /**
     * Index Page for this controller.
     *
     * Maps to the following URL
     *        http://example.com/index.php/welcome
     *    - or -
     *        http://example.com/index.php/welcome/index
     *    - or -
     * Since this controller is set as the default controller in
     * config/routes.php, it's displayed at http://example.com/
     *
     * So any other public methods not prefixed with an underscore will
     * map to /index.php/welcome/<method_name>
     * @see https://codeigniter.com/user_guide/general/urls.html
     */

    function __construct()
    {
        parent::__construct();
        $this->load->database();
    }

    public function index()
    {

        $this->load->view('sign/login');
    }

    public function orderPlus()
    {
        echo json_encode($_SESSION["now_routine"]);
    }

    public function exercise_Main()
    {
        $this->load->model('Weight');
        $data['BMI_info'] = $this->Weight->get_BMI();


        $this->load->model('Exercise_j');
        $data['achievement_rate'] = $this->Exercise_j->get_achievement_rate();
        $data['achievement_rate_by_date'] = $this->Exercise_j->get_achievement_rate_by_date();

        $today = date("Y-m-d");
        $data['exercise_plan'] = $this->Exercise_j->get_exercise_plan($today);

        $this->load->model('Board');
        $data['board_info'] = $this->Board->get_board();


        $data['qna_info'] = $this->Board->get_qna();


        $this->load->view('exercise_Main/main-j', $data);

        //$this->load->view('exercise_Main/main-j');
    }

    public function exercise_Go()
    {
        //date_default_timezone_set('Asia/Seoul');
        $this->load->model('Exercise_j');
        $today = date("Y-m-d");
        //exit(var_dump($today));
        if (!$this->Exercise_j->check_routine()) {
            echo "<script>alert('今日は計画がありません')</script>";

            echo "<script>location.replace('/main_j/exercise_Plan')</script>";

        } else {
            $result = $this->Exercise_j->Exercise_start();
            $type = gettype($result);
            if ($type == "array") {
                $_SESSION["now_routine"] = $result;
                //exit(var_dump( $_SESSION["now_routine"]));
            } else
                $_SESSION["now_routine"] = "データなし";

            $this->load->view('exercise_Go/exercise_start-j');
        }
    }

    public function delete_exercise()
    {
        $user_num = $_SESSION['user_info']->user_numb;
        $date = $_POST['date'];

        $this->load->model('Exercise_j');
        $this->Exercise_j->delete_exercise($user_num,$date);
    }

    public function insert_check_point()
    {
        $this->load->model('Exercise_j');
//        if (isset($_post['body_point'])) {
//            $fail_body_point = $_post['fail_body_point'];
//            $order = $_post['order'];
//
//            $today = date("Y-m-d");
//
//            $this->Exercise_j->insert_Exercise_Result($today, $fail_body_point, $order);
//
//        }

//
//        $body_point = $_REQUEST['body_point'];
//        $order = $_REQUEST['order'];
        $body_point = $_REQUEST['body_point'];
        $order = $_REQUEST['order'];



        $today = date("Y-m-d");

        $k=$this->Exercise_j->insert_Exercise_Result($today, $body_point, $order);

        echo json_encode($k);
    }

    public function Delete_result_info(){
        $this->load->model('Exercise_j');

        $today = date("Y-m-d");
        $this->Exercise_j->Delete_check_point($today);
    }

    public function numPlus()
    {
        echo json_encode($_SESSION["now_routine"]);
    }

    public function exercise_Plan()
    {
        $this->load->model('Exercise_j');

        $this->load->view('exercise_Plan/exercise_select-j');

    }

    public function save_routine()
    {
        $_SESSION['day'] = $_POST['days'];
        $user_num = $_SESSION['user_info']->user_numb;
        $select_routine = $_SESSION['select_routine'];


        //exit(var_dump($select_routine));
        $this->load->model('Exercise_j');
        $exercise_count = $this->Exercise_j->Get_count_exercise_in_routine($select_routine);
        //exit(var_dump($exercise_count));
        $complete = $this->Exercise_j->Exercise_routine_complete($exercise_count, $user_num, $select_routine, $_SESSION['day']);

        echo json_encode($complete);
    }

    public function get_exercise_plan()
    {
        $date = $_POST['date'];
        $this->load->model('Exercise_j');

        $exercise_plan = $this->Exercise_j->get_exercise_plan($date);

        echo json_encode($exercise_plan);
    }

    public function update_exercise()
    {
        $date = $_REQUEST['date'];
        $exercise_name = $_REQUEST['exercise_numb'];
        $number_of_set = $_REQUEST['set_num'];
        $number_of_count = $_REQUEST['set_of_num'];

        $this->load->model('Exercise_j');
        $result=$this->Exercise_j->update_exercise($date, $exercise_name, $number_of_set, $number_of_count);

        echo json_encode($result);
    }

    public function exercise_Beginner_date($year = null, $month = null){
        if(isset($_POST['qwe']))
            $_SESSION['select_routine'] = $_POST['qwe'];

        //exit(var_dump($_SESSION['select_routine']));

        $this->load->model('Exercise_j');
        $data = $this->Exercise_j->generate($year, $month);

        $this->load->view('exercise_Plan/p', $data);
    }

    public function exercise_date($year = null, $month = null)
    {
        if(isset($_POST['qwe']))
            $_SESSION['select_routine'] = $_POST['qwe'];

        //exit(var_dump($_SESSION['select_routine']));

        $this->load->model('Exercise_j');
        $data = $this->Exercise_j->generate($year, $month);

        $this->load->view('exercise_Plan/exercise_date-j', $data);
    }

    public function exercise_Select()
    {
        //exit(var_dump($_SESSION['day']));
        $this->load->view('exercise_Plan/exercise_select-j');
    }

    function exercise_Select_Part()
    {
        if ($_POST) {
            $part = $_POST['part'];
            $level = $_POST['level'];
            $this->load->model('Exercise_j');

            $result = $this->Exercise_j->Exercise_recommend($part, $level);

            $type = gettype($result);

            if ($type == "array") {
                $data = $result;
            } else
                $data = "데이터가 없습니다.";

            echo json_encode($data);

        } else
            echo "error";
    }

    public function exercise_Select_routine()
    {
        $routine_list = $_POST['routine_list_index'];
        $this->load->model('Exercise_j');
        $result = $this->Exercise_j->Exercise_routine_info($routine_list);
        $type = gettype($result);
        if ($type == "array") {
            $data = $result;
        } else
            $data = "데이터가 없습니다.";

        echo json_encode($data);
    }

    public function exercise_Preview()
    {
        $user_num = $_SESSION['user_info']->user_numb;
        $day=$_SESSION['day'];
        //exit(var_dump($day));
        $this->load->model('Exercise_j');

        $result = $this->Exercise_j->Exercise_routine_preview($user_num, $day);
        $type = gettype($result);
        //exit(var_dump($result));
        if ($type == "array") {
            $data['user_complete_info'] = $result;
        } else
            $data = "데이터가 없습니다.";

        $this->load->view('exercise_Plan/exercise_preview-j', $data);

        unset($_SESSION["day"]);

    }

    public function exercise_Bodycheck()
    {
        $this->load->model('Weight');
        $data['BMI_info'] = $this->Weight->get_BMI();

        $this->load->model('Exercise_j');
        $data['achievement_rate'] = $this->Exercise_j->get_achievement_rate();
        $data['achievement_rate_by_date'] = $this->Exercise_j->get_achievement_rate_by_date();

        $today = date("Y-m-d");
        $data['exercise_plan'] = $this->Exercise_j->get_exercise_plan($today);

        $this->load->model('Board');
        $data['board_info'] = $this->Board->get_board();


        $data['qna_info'] = $this->Board->get_qna();

        //$this->load->view('exercise_Main/main-j');
        $this->load->view('exercise_Profile/body_check-j', $data);
    }

    public function save_time(){


        $time = explode (":", $_POST['time']);
        echo "BEFORE<BR>"; var_dump($time); echo "<BR>";
        $time[0]=$time[0]*60;
        $_SESSION['time'] += array_sum($time);
        var_dump($_POST['time']); echo "<BR><BR>".$time[0].":".$time[1]."<BR><BR>"; var_dump($_SESSION['time']);
        exit();
    }

    public function exercise_Result()
    {
        //exit(var_dump($_SESSION['time']));
        $time[0] = $_SESSION['time'] / 60;
        $time[1] = $_SESSION['time'] % 60;
        $data['exercise_time'] = $time;

        $this->load->model('Exercise_j');

        $exercise_time = (($time[0] + ($time[1] / 60)) / 30);
        $today = date("Y-m-d");

        $this->Exercise_j->save_calorie_info($today, $exercise_time);

        $data['calorie_info'] = $this->Exercise_j->get_calorie_info();

        $data['achievement_count'] = $this->Exercise_j->exercise_Result();
        $data['total_achievement_count'] = $this->Exercise_j->exercise_Result2();

        //exit(var_dump($data));

        $data['position_check_on_today'] = $this->Exercise_j->get_position_check_on_today($today);

        if($data['position_check_on_today'])
            $data['position_check_on_another_day'] = $this->Exercise_j->get_position_check_on_another_day($today);
        else
            $data['position_check_on_another_day'] = 0;

        $this->load->view('exercise_Result/exercise_result-j', $data);
    }

    public function exercise_QnA()
    {
        $this->load->view('exercise_QnAboard/index');
    }

    public function exercise_Free()
    {
        $this->load->view('exercise_Freeboard/index');
    }

    public function exercise_weight()
    {
        if ($_POST) {
            $people_weight = $_POST['people_weight'];
            $today = date("Y-m-d");

            $this->load->model('Weight');
            $this->load->model('Weight');

            $result = $this->Weight->insert_weight($people_weight, $today);

            $type = gettype($result);

            if ($type == "array") {
                $data = $result;
            } else
                $data = "데이터가 없습니다.";

            echo json_encode($data);

        } else
            echo "error";

    }

}
