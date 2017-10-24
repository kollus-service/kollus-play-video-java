<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Kollus Sample JSP</title>
<link rel="stylesheet"
	href="external/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="external/bootstrap/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="external/jPages/jPages.css"
	type="text/css" media="all">
<link rel="stylesheet" href="css/main.css">
</head>
<body>
	<div class="container-fluid">
		<a href="/"> <span><h4>Kollus-Play-Video-Java</h4></span></a>
		<hr />
		<div
			class="col-md-5 col-xs-5 col-lg-5 col-md-offset-1 col-xs-offset-1 col-lg-offset-1">
			<div class="input-group">
				<span class="input-group-addon">userkey</span> <input
					id="tb_userkey" class="form-control" type="text" />
			</div>
			<div class="input-group">
				<span class="input-group-addon">secretkey</span> <input
					id="tb_secretkey" class="form-control" type="text" />
			</div>
		</div>

	</div>
	<hr />
	<div class="container-fluid">
		<div class="col-md-3 col-xs-3 col-lg-3">
			<div class="panel panel-default" id="pn_paylod">
				<div class="panel-heading" id="ph_paylod">
					<h4>Payload</h4>
				</div>
				<div class="panel-body" id="pb_paylod">
					<div class="input-group">
						<span class="input-group-addon">cuid</span> <input id="tb_cuid"
							class="form-control" type="text" />
					</div>
					<div class="input-group">
						<span class="input-group-addon">awtc</span> <input id="tb_awtc"
							class="form-control" type="text" />
					</div>
					<div class="input-group">
						<span class="input-group-addon">expt</span> <input id="tb_expt"
							class="form-control" type="text" />
					</div>
					<div class="btn-group btn-group-justified" role="group">
						<div class="btn-group btn-group-sm" role="group">
							<button type="button" class="btn btn-default" id="btn_addmc">ADD
								MC</button>
							<button type="button" class="btn btn-default" id="btn_removemc">REMOVE
								MC</button>
						</div>
					</div>
					<div class="div_mc">
						<div id="div_mc_0">
							<span class="label label-primary span_index"> 1 </span>
							<div class="input-group">
								<span class="input-group-addon">mckey</span> <input
									class="form-control tb_mckey" type="text" />
							</div>
							<div class="input-group">
								<span class="input-group-addon">mcpf</span> <input
									class="form-control tb_mcpf" type="text" />
							</div>
							<div class="checkbox">
								<label><input type="checkbox" class="cb_intr" />intr</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" class="cb_seek" />seek</label>
							</div>
							<div class="input-group">
								<span class="input-group-addon">seekable_end</span><input
									class="form-control tb_seekable" type="number" min="-1"
									value="-1" />
							</div>
							<div class="checkbox">
								<label><input type="checkbox" class="cb_playrate" />disable_playrate</label>
							</div>
						</div>
					</div>
				</div>
				<div class="panel-footer" id="pf_payload">
					<div class="btn-group btn-group-justified">
						<div class="btn-group btn-group-lg">
							<button type="button" class="btn btn-default" id="btn_c_p">
								<span class="wordB">Create JSON Paylod</span>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-4 col-xs-4 col-lg-4">
			<div class="panel panel-default" id="pn_jwt">
				<div class="panel-heading" id="ph_jwt">
					<h4>JWT</h4>
				</div>
				<div class="panel-body" id="pb_jwt">
					<span>JSON Header</span>
					<textarea id="tt_jwt_header" rows="5" cols="0"></textarea>
					<span>JSON Payload</span>
					<textarea id="tt_jwt_payload" rows="15" cols="0"></textarea>
					<div class="btn-group btn-group-justified">
						<div class="btn-group btn-group-sm">
							<button type="button" class="btn btn-default" id="btn_c_t">Create
								Token</button>
						</div>
					</div>
					<span>Web Token</span>
					<textarea id="tt_jwt_token" rows="3" cols="0"></textarea>
					<div class="btn-group btn-group-justified">
						<div class="btn-group btn-group-sm">
							<button type="button" class="btn btn-default" id="btn_d_t">Decode
								Token</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-5 col-xs-5 col-lg-5">
			<div class="panel panel-default" id="pn_queryString">
				<div class="panel-heading" id="ph_queryString">
					<h4>QueryString Options</h4>
				</div>
				<div class="panel-body" id="pb_queryString">
					<div class="container-fluid">
						<div class="btn-group btn-group-justified" role="group">
							<div class="btn-group btn-group-sm">
								<button id="btn_autoplay" type="button"
									class="btn btn-default dropdown-toggle" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false">
									<span class="btn-span-ellipsis">Autoplay</span> <span
										class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									<li><a>Autoplay On</a></li>
									<li><a>Autoplay Off</a></li>
								</ul>
							</div>
							<div class="btn-group btn-group-sm">
								<button id="btn_mute" type="button"
									class="btn btn-default dropdown-toggle" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false">
									<span class="btn-span-ellipsis">Mute</span> <span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									<li><a>Mute On</a></li>
									<li><a>Mute Off</a></li>
								</ul>
							</div>
							<div class="btn-group btn-group-sm">
								<button id="btn_download" type="button"
									class="btn btn-default dropdown-toggle" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false">
									<span class="btn-span-ellipsis">Download</span> <span
										class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									<li><a>Download On</a></li>
									<li><a>Download Off</a></li>
								</ul>
							</div>
						</div>
						<div class="container-fluid">
							<div class="btn-group btn-group-justified" role="group">
								<div class="btn-group btn-group-sm">
									<button id="btn_force_exculsive_player" type="button"
										class="btn btn-default dropdown-toggle" data-toggle="dropdown"
										aria-haspopup="true" aria-expanded="false">
										<span class="btn-span-ellipsis">force_exculsive_player</span>
										<span class="caret"></span>
									</button>
									<ul class="dropdown-menu">
										<li><a>force_exculsive_player On</a></li>
										<li><a>force_exculsive_player Off</a></li>
									</ul>
								</div>
								<div class="btn-group btn-group-sm">
									<button id="btn_play_downloaded_file" type="button"
										class="btn btn-default dropdown-toggle" data-toggle="dropdown"
										aria-haspopup="true" aria-expanded="false">
										<span class="btn-span-ellipsis">play_downloaded_file</span> <span
											class="caret"></span>
									</button>
									<ul class="dropdown-menu">
										<li><a>play_downloaded_file On</a></li>
										<li><a>play_downloaded_file Off</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="input-group">
						<span class="input-group-addon">Title</span> <input type="text"
							id="input_title" class="form-control span3">
					</div>
					<div class="input-group">
						<span class="input-group-addon span3">Start Time with Popup</span>
						<input type="text" id="input_t" class="form-control span3"
							value="0"> <span class="input-group-btn">
							<button type="button" class="btn btn-default num-up">
								<span class="">▲</span>
							</button>
							<button type="button" class="btn btn-default num-down">
								<span class="">▼</span>
							</button>
						</span>
					</div>
					<div class="input-group">
						<span class="input-group-addon">Start Time without Popup</span> <input
							type="text" id="input_s" class="form-control" value="0">
						<span class="input-group-btn">
							<button type="button" class="btn btn-default num-up">
								<span class="">▲</span>
							</button>
							<button type="button" class="btn btn-default num-down">
								<span class="">▼</span>
							</button>
						</span>
					</div>
					<div class="input-group">
						<span class="input-group-addon">Brightness</span> <input
							type="text" id="input_brightness" class="form-control" value="0">
						<span class="input-group-btn">
							<button type="button" class="btn btn-default num-up">
								<span class="">▲</span>
							</button>
							<button type="button" class="btn btn-default num-down">
								<span class="">▼</span>
							</button>
						</span>
					</div>
					<div class="input-group">
						<span class="input-group-addon">Constrast</span> <input
							type="text" id="input_constrast" class="form-control" value="0">
						<span class="input-group-btn">
							<button type="button" class="btn btn-default num-up">
								<span class="">▲</span>
							</button>
							<button type="button" class="btn btn-default num-down">
								<span class="">▼</span>
							</button>
						</span>
					</div>
					<div class="input-group">
						<span class="input-group-addon">Saturation</span> <input
							type="text" id="input_saturation" class="form-control" value="0">
						<span class="input-group-btn">
							<button type="button" class="btn btn-default num-up">
								<span class="">▲</span>
							</button>
							<button type="button" class="btn btn-default num-down">
								<span class="">▼</span>
							</button>
						</span>
					</div>
					<div class="input-group">
						<span class="input-group-addon">mobile_return_url</span> <input
							type="text" id="input_mobile_return_url"
							class="form-control valid-path" value="">
					</div>
					<div class="input-group">
						<span class="input-group-addon">mobile_folder_download</span> <input
							type="text" id="input_mobile_folder_download"
							class="form-control" value="">
					</div>
					<div class="input-group">
						<span class="input-group-addon">wmode</span> <input type="text"
							id="input_wmode" class="form-control"> <span
							class="input-group-btn">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">
								wmode <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a>direct</a></li>
								<li><a>transparent</a></li>
								<li><a>window</a></li>
								<li><a>opaque</a></li>
								<li><a>gpu</a></li>
							</ul>
						</span>
					</div>
					<div class="input-group">
						<span class="input-group-addon">pc_player_version</span> <input
							type="text" id="input_pc_player_version" class="form-control">
						<span class="input-group-btn">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">
								version <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a>V2</a></li>
								<li><a>V3</a></li>
								<li><a>V3e</a></li>
							</ul>
						</span>
					</div>
					<div class="input-group">
						<span class="input-group-addon">player_version</span> <input
							type="text" id="input_player_version" class="form-control">
						<span class="input-group-btn">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">
								version <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a>V2</a></li>
								<li><a>V3</a></li>
								<li><a>V3e</a></li>
								<li><a>html5</a></li>
							</ul>
						</span>
					</div>
					<div class="input-group">
						<span class="input-group-addon">pc_folder_download</span> <input
							type="text" id="input_pc_folder_download" class="form-control"
							value="">
					</div>
					<div class="input-group">
						<span class="input-group-addon">buffer</span> <input type="text"
							id="input_buffer" class="form-control" value="0"> <span
							class="input-group-btn">
							<button type="button" class="btn btn-default num-up">
								<span class="">▲</span>
							</button>
							<button type="button" class="btn btn-default num-down">
								<span class="">▼</span>
							</button>
						</span>
					</div>
					<div class="input-group">
						<span class="input-group-addon beautiful"> <input
							type="checkbox" id="input_show_controls_paused" /></span> <input
							type="text" class="form-control notyping"
							value="show_controls_paused" disabled />
					</div>
					<div class="input-group">
						<span class="input-group-addon beautiful"> <input
							type="checkbox" id="input_show_poster_ended"></span> <input
							type="text" class="form-control notyping"
							value="show_poster_ended" disabled />
					</div>
					<div class="input-group">
						<span class="input-group-addon">overlay_button_position</span> <input
							type="text" id="input_overlay_button_position"
							class="form-control" value=""> <span
							class="input-group-btn">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">
								Position <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a>TR</a></li>
								<li><a>TR</a></li>
								<li><a>BR</a></li>
								<li><a>BL</a></li>
								<li><a>CT</a></li>
							</ul>
						</span>
					</div>
				</div>
				<div class="panel-footer">
					<button type="button" class="btn btn-primary" id="btn_p"
						data-toggle="modal" data-target="#playerModal">Play</button>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="playerModal" tablIndex="-1" role="dialog"
		aria-labelledby="playerModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Player</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="embed-responsive embed-responsive-16by9">
						<iframe id="player" class="embed-responsive-item" src="">
						</iframe>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript"
		src="external/jquery/jquery-3.2.1.min.js"></script>
	<script type="text/javascript"
		src="external/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="external/jPages/jPages.js"></script>
	<script type="text/javascript"
		src="external/kollus/kollus.videogateway-controller.min.js"></script>
	<script type="text/javascript" src="js/common.js"></script>
	<script type="text/javascript" src="js/query.js"></script>
	<script type="text/javascript" src="js/jwt.js"></script>
</body>
</html>