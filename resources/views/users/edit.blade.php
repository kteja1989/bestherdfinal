@extends('layouts.nGlobal')
@section('content')
	<!--Container-->
	<div class="container min-h-screen mx-auto pt-20">
		<div class="w-full px-4 md:px-0 md:mt-8 mb-16 text-gray-800 leading-normal">

    		<!--Divider-->
    		<hr class="border-b-2 border-gray-600 my-2 mx-4">
    		<!--Divider-->

            <div class="flex flex-row flex-wrap flex-grow mt-2">
				<!--Table Card-->
				<div class="w-full p-3">
                  <div class="bg-indigo-100 border border-gray-800 rounded shadow">
                    <div class="border-b border-gray-800 p-3">
                      <h5 class="font-bold uppercase text-gray-600">Edit of Roles</h5>
                    </div>
                    <div class="p-5">
						{!! Form::model($user, ['method' => 'PUT', 'route' => ['users.update', $user->id]]) !!}
							<table class="w-1/2 p-5 text-gray-700">
							    <thead>
							        <tr>
							          <th class="text-left text-gray-900">
							          </th>
							        </tr>
							    </thead>
							    <tbody>
							        <tr>
							            <td>
							                <label class="block text-gray-900 text-sm font-normal font-bold pt-3 mb-2" for="species">Name</label>
							                {{ $user->name }}
							            </td>
							            <td>
							                <label class="block text-gray-900 text-sm font-bold font-normal pt-3 mb-2" for="nsc">Email</label>
							                {{ $user->email }}
							            </td>
							        </tr>

									<tr>
							            <td>
							                <label class="block text-gray-900 text-sm font-bold font-normal pt-3 mb-2" for="nsc">Email Verified on</label>
							                {{ $user->email_verified_at }}
							            </td>
							            <td>
							                <label class="block text-gray-900 text-sm font-bold font-normal pt-3 mb-2" for="nsc">Folder</label>
							                {{ $user->folder }}
							            </td>
							        </tr>

									<tr>
							            <td>
							                <label class="block text-gray-900 text-sm font-bold font-normal pt-3 mb-2" for="nsc">Start Date</label>
							                {{ $user->start_date }}
							            </td>
							            <td>
							                <label class="block text-gray-900 text-sm font-normal font-bold pt-3 mb-2" for="type">Expires on*</label>
															<input size="15" class="shadow appearance-none border border-red-500 rounded w-full py-1 text-gray-700 mb-1 leading-tight focus:outline-none focus:shadow-outline" name="expiry_date" id="expiry_date" value="{{ $user->expiry_date }}" type="date">
							                <label class="error text-orange-900 text-sm font-normal pt-0 mb-0" for="usercode">
							                    @error('expiry_date') <span class="error">{{ $message }}</span> @enderror
							                </label>
							            </td>
							        </tr>

							        <tr>
							          <td colspan="2">
							            <label class="block text-gray-900 text-sm font-bold font-normal pt-3 mb-2" for="usercode">Role</label>
							            <div class="flex justify-left">
							              <div class="mb-3 w-full xl:w-96">
							                <select class="form-select appearance-none
							                  block w-full px-3 py-1.5 text-base font-normal text-gray-700
							                  bg-white bg-clip-padding bg-no-repeat border border-solid border-gray-300
							                  rounded transition ease-in-out m-0
							                  focus:text-gray-700 focus:bg-white border border-red-500 rounded focus:border-blue-600 focus:outline-none" id="role" name="role">
							                  <option value="select">Select Role</option>
								                  @foreach($roles as $row)
								                    <option value="{{ $row->id }}">{{ ucfirst($row->name) }}</option>
								                  @endforeach
								                  <option value="">No Role</option>
							                </select>
							              </div>
							            </div>
							            <label class="error text-orange-900 text-sm font-normal pt-0 mb-0" for="usercode">
							              @error('role') <span class="error">{{ $message }}</span> @enderror
							            </label>
							          </td>
							        </tr>
									<!--
							        <tr>
							            <td colspan="3">
							                <label class="block text-gray-900 text-sm font-bold font-normal pt-3 mb-2" for="usercode">Incharge</label>
							                <input size="15" class="shadow appearance-none border border-red-500 rounded w-full py-1 text-gray-700 mb-1 leading-tight focus:outline-none focus:shadow-outline" id="approvedBy" value="" type="text">
							                <label class="error text-orange-900 text-sm font-normal pt-0 mb-0" for="usercode">
							                @error('herd_incharge') <span class="error">{{ $message }}</span> @enderror
							                </label>
							            </td>
							        </tr>
									-->
							        <tr>
							          <td class="text-left text-gray-900">
							          </br></br>
							            <button type="submit" class="bg-green-800 w-22 hover:bg-blue-800 text-white font-normal py-2 px-4 mx-3  rounded">Update</button>
							          </td>
							        </tr>
							    </tbody>
							</table>
							{!! Form::close() !!}
                        </div>
                      </div>
                    </div>
				<!--/table Card-->
            </div>
			<!--/ Console Content-->
		</div>
	</div>
	<!--/container-->
