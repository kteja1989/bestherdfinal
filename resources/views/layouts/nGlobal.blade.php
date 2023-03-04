<!DOCTYPE html>
	<html lang="en">
		<head>
			<!-- header -->
				@include('layouts.nHeader')
			<!--end of header -->
				@livewireStyles
		</head>

		<body class="bg-black-alt font-sans leading-normal tracking-normal">
			<!-- navbar -->

			@hasrole('herdmanager')
				@include('layouts.nNavbarHerdManager')
			@endhasrole
			
			@hasrole('herdasstimmun')
				@include('layouts.nNavbarImmAssistant')
			@endhasrole
			
			@hasrole('herdserum')
				@include('layouts.nNavbarSerumAssistant')
			@endhasrole

			@hasrole('herdvet')
				@include('layouts.nNavbarHerdVeternarians')
			@endhasrole	
			
			@hasrole('bestadmin')
				@include('layouts.nNavbarBestAdmin')
			@endhasrole

			<!--end of navbar-->

			<!--Container-->
				@yield('content')
			<!--end of container-->

			<!--begin footer-->
				@include('layouts.nFooter')
			<!--end of footer-->

			<!--scripts-->

				@livewireScripts
				@livewireCalendarScripts
				@livewireResourceTimeGridScripts
				@include('layouts.nScripts')
			<!--end of scripts-->
		</body>
	</html>
