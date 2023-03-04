@extends('layouts.nGlobal')
@section('content')
<!--Container-->
<div class="container min-h-screen mx-auto pt-20">
    <div class="w-full px-4 md:px-0 md:mt-8 mb-16 text-gray-800 leading-normal">
        <!--Divider-->
        <hr class="border-b-2 border-gray-600 my-2 mx-4">
        <!--Divider-->

        <div class="flex flex-row flex-wrap flex-grow mt-2">
            <div class="w-full p-3">
                <div class="bg-orange-100 border border-gray-800 rounded shadow">
                    <div class="border-b border-gray-800 p-3">
                        <h5 class="font-bold uppercase text-gray-900">User Creation Form</h5>
                    </div>
                    <div class="w-2/4 p-5">
                        {!! Form::open(['method' => 'POST', 'route' => ['users.store']]) !!}
                        <label class="block text-gray-900 text-sm font-bold mb-2" for="username">
                            Name*
                        </label>
                        <input class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" name="name" id="name" type="text" placeholder="Name">
                        <p class="help-block"></p>
                        @if($errors->has('username'))
                            <p class="help-block">
                                {{ $errors->first('username') }}
                            </p>
                        @endif


                        <label class="block text-gray-900 text-sm pt-4 font-bold mb-2" for="email">
                            Email*
                        </label>
                        <input class="shadow appearance-none border border-red-500 rounded w-full py-2 px-3 text-gray-700 mb-3 leading-tight focus:outline-none focus:shadow-outline" name="email" id="email" type="email" placeholder="Email">
                        <p class="help-block"></p>
                        @if($errors->has('email'))
                            <p class="help-block">
                                {{ $errors->first('email') }}
                            </p>
                        @endif

                        <label class="block text-gray-900 text-sm pt-3 font-bold mb-2" for="password">
                        Password
                        </label>
                        <input class="shadow appearance-none border border-red-500 rounded w-full py-2 px-3 text-gray-700 mb-3 leading-tight focus:outline-none focus:shadow-outline" id="password" type="password" name="password" placeholder="****">
                        @if($errors->has('password'))
                            <p class="help-block">
                                {{ $errors->first('password') }}
                            </p>
                        @endif

                        <label class="block text-gray-900 pt-3 text-sm font-bold mb-2" for="password">
                        Confirm Password
                        </label>
                        <input class="shadow appearance-none border border-red-500 rounded w-full py-2 px-3 text-gray-700 mb-3 leading-tight focus:outline-none focus:shadow-outline" id="password_confirmation" name="password_confirmation" type="password" placeholder="****">
                        @if($errors->has('password_confirmation'))
                            <p class="help-block">
                                {{ $errors->first('password_confirmation') }}
                            </p>
                        @endif
                        
                        <label class="block text-gray-900 pt-3 text-sm font-bold mb-2" for="password">
                        Start Date
                        </label>
                        <input class="shadow appearance-none border border-red-500 rounded w-full py-2 px-3 text-gray-700 mb-3 leading-tight focus:outline-none focus:shadow-outline" id="start_date" name="start_date" type="date" placeholder="">
                        @if($errors->has('start_date'))
                            <p class="help-block">
                                {{ $errors->first('start_date') }}
                            </p>
                        @endif


                        <label class="block text-gray-900 pt-3 text-sm font-bold mb-2" for="password">
                        End Date
                        </label>
                        <input class="shadow appearance-none border border-red-500 rounded w-full py-2 px-3 text-gray-700 mb-3 leading-tight focus:outline-none focus:shadow-outline" id="end_date" name="end_date" type="date" placeholder="****">
                        @if($errors->has('end_date'))
                            <p class="help-block">
                                {{ $errors->first('end_date') }}
                            </p>
                        @endif

                        <label class="block uppercase tracking-wide pt-2 text-gray-900 text-xs font-bold mb-2" for="grid-state">
                            Role
                        </label>
                        <div class="relative">
                            <select class="block appearance-none w-full bg-gray-200 pt-3 border border-gray-200 text-gray-700 py-3 px-4 pr-8 rounded leading-tight focus:outline-none focus:bg-white focus:border-gray-500" name="roles[]" id="roles" multiple>
                                @foreach($roles as $role)
                                <option value="{{ $role }}">{{ $role }}</option>
                                @endforeach
                            </select>
                            <p class="help-block"></p>
                            @if($errors->has('roles'))
                                <p class="help-block">
                                    {{ $errors->first('roles') }}
                                </p>
                            @endif

                            <div class="py-4 mt-2">
                                <x-button class="btn btn-xs bg-blue-800 hover:bg-green-700 text-xs text-gray-200 btn-info">Submit</x-button>
                                {!! Form::close() !!}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--/table Card-->
        </div>
        <!--/ Console Content-->
    </div>
</div>
<!--/container-->
@stop
