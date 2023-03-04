@extends('layouts.nGlobal')
@section('content')
	<!--Container-->
	<div class="container min-h-screen mx-auto pt-20">
		<div class="w-full px-4 md:px-0 md:mt-8 mb-16 text-gray-800 leading-normal">
			<!--Console Content-->
			<div class="flex flex-wrap">
				<!--Metric Card-->
                <div class="w-1/2 md:w-1/2 xl:w-1/2 p-3">
                    <div class="bg-orange-100 border border-gray-800 rounded shadow p-2">
                        <div class="flex flex-row items-center">
                            <div class="flex-shrink pr-4">
                                <div class="rounded p-3 bg-yellow-600">
                                    <a href="{{ route('users.create') }}">
                                    	<i class="fas fa-user-plus fa-1x fa-fw fa-inverse"></i>
                                    </a>
                                </div>
                            </div>
                        <div class="flex-1 text-right md:text-center">
                          <h5 class="font-bold uppercase text-gray-900">Add</h5>
                        	<h5 class="font-normal text-left text-sm text-gray-600">Users {{ count($users) }}</h5>
                        </div>
                        </div>
                    </div>
                </div>
				<!--/Metric Card-->

				<!--Metric Card -->
    			<div class="w-1/2 md:w-1/2 xl:w-1/2 p-3">
                    <div class="bg-orange-100 border border-gray-800 rounded shadow p-2">
                        <div class="flex flex-row items-center">
                            <div class="flex-shrink pr-4">
                                <div class="rounded p-3 bg-green-600">
                                    <i class="fa fa-wallet fa-1x fa-fw fa-inverse"></i>
                                </div>
                            </div>
                            <div class="flex-1 text-left md:text-center">
                                <h5 class="font-bold uppercase text-gray-900">Activate (Not Active)</h5>
                                <h5 class="font-normal text-left text-sm text-gray-600"></h5>
                            </div>
                        </div>
                    </div>
    			</div>
				<!--/End Metric Card -->
            </div>
			<!--End of Console content-->
			<!--Divider-->
			<hr class="border-b-2 border-gray-600 my-2 mx-4">
			<!--Divider-->

            <div class="flex flex-row flex-wrap flex-grow mt-2">
				<!--Table Card-->
				<div class="w-full p-3">
                    <div class="bg-orange-100 border border-gray-800 rounded shadow">
                        <div class="border-b border-gray-800 p-3">
                            <h5 class="font-bold uppercase text-gray-900">Users</h5>
                        </div>
                        <div class="p-5">
                            <table class="w-full p-5 text-gray-700">
                                <thead class="py-4">
                                    <tr >
                                        <th class="py-4 text-left text-gray-900"><input type="checkbox" id="select-all" /></th>
                                        <th class="py-4 text-left text-xs text-gray-900">Name</th>
                                        <th class="py-4 text-left text-xs text-gray-900">Email</th>
                                        <th class="py-4 text-left text-xs text-gray-900">Date/Time Added</th>
                                        <th class="py-4 text-left text-xs text-gray-900">Role</th>
                                        <th class="py-4 text-left text-xs text-gray-900">Operations</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @if (count($users) > 0)
                                        @foreach ($users as $user)
                                            <tr  class="text-xs text-gray-900 py-3" data-entry-id="{{ $user->id }}">
                                                <td><input type="checkbox" id="select-all" /></td>
                                                <td>{{ $user->name }}</td>
                                                <td>{{ $user->email }}</td>
                                                <td>{{ $user->created_at->format('F d, Y h:ia') }}</td>
                                                <td>
                                                	@foreach ($user->roles()->pluck('name') as $role)
                                                	  <span class="label label-info label-many">{{ $role }}</span>
                                                	@endforeach
                                                </td>
                                                <td>
                                                	<a href="{{ route('users.edit', [$user->id]) }}">
                                                		<x-button class="btn btn-xs bg-grey-800 hover:bg-orange-700 btn-info">Edit</x-button>
                                                	</a>
                                                    {!! Form::open(array('style' => 'display: inline-block;',
                                                      'method' => 'DELETE','onsubmit' => "return confirm('".trans("global.app_are_you_sure")."');",
                                                      'route' => ['users.destroy', $user->id])) !!}
                                                    
                                                    {!! Form::close() !!}
                                                </td>
                                            </tr>
                                        @endforeach
                                    @else
                                        <tr>
                                          <td colspan="9">@lang('global.app_no_entries_in_table')</td>
                                        </tr>
                                    @endif
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
				<!--/table Card-->
            </div>
			<!--/ Console Content-->
		</div>
	</div>
	<!--/container-->
