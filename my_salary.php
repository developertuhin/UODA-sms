<?php
session_start();
include_once './config/config.php';

if(!isset($_SERVER['HTTP_REFERER'])){
    // redirect them to your desired location
    header('location: index.php');
    exit;
}
?>
<!DOCTYPE html>
<html lang="en">

    <?php include_once './admin/layouts/header.php'; ?>

    <body class="hold-transition sidebar-mini layout-fixed">
        <div class="wrapper">

            <?php include_once './admin/layouts/top_nav.php'; ?>
            <?php include_once './admin/layouts/sidebar_teacher.php'; ?>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">

                <!-- Content Header (Page header) -->
                <div class="content-header">
                    <div class="container-fluid">
                        <div class="row mb-2">
                            <div class="col-sm-6">
                                <h1 class="m-0 text-dark">My Salary</h1>
                            </div><!-- /.col -->
                            <div class="col-sm-6">
                                <ol class="breadcrumb float-sm-right">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active">My Salary</li>
                                </ol>
                            </div><!-- /.col -->
                        </div><!-- /.row -->
                    </div><!-- /.container-fluid -->
                </div>
                <!-- /.content-header -->

                 <!-- My Salary History Table-->
                <section class="content">
                    <div class="container-fluid">
                        <div class="row" id="table1">
                            <div class="col-10">
                                <div class="card card-outline card-primary">
                                    <div class="card-header">
                                        <h3 class="card-title">My Salary History</h3>
                                    </div>
                                    <!-- /.card-header -->
                                    <div class="card-body">
                                        <table id="dTable" class="table table-bordered table-striped">
                                            <thead>
                                                <tr>
                                                    <th>ID</th>
                                                    <th>Year</th>
                                                    <th>Month</th>
                                                    <th>Description</th>
                                                    <th>Paid($)</th>
                                                    <th>Date</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php
                                           
                                                $teacher_id = $_SESSION['id'];
                                                
                                                $sql = "SELECT * FROM teacher_salary WHERE teacher_id='$teacher_id'";
                                                $result = mysqli_query($conn, $sql);
                                                $count = 0;

                                                if (mysqli_num_rows($result) > 0) {
                                                    while ($row = mysqli_fetch_assoc($result)) {
                                                        $count++;

                                                ?>
                                                        <tr>
                                                            <td><?php echo $count; ?></td>
                                                            <td><?php echo $row['year']; ?></td>
                                                            <td><?php echo $row['month']; ?></td>
                                                            <td><?php echo $row['_status']; ?></td>
                                                            <td><?php echo $row['paid']; ?></td>
                                                            <td><?php echo $row['date']; ?></td>
                                                        </tr>
                                                <?php }
                                                } ?>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

            </div>
            <!-- /.content-wrapper -->

            <?php include_once './admin/layouts/footer.php'; ?>
            
        </div>
        <!-- ./wrapper -->

        <?php include_once './admin/layouts/import_js.php'; ?>
        
    </body>

</html>