<div>
    {{-- Because she competes with no one, no one can compete with her. --}}
        {{-- Close your eyes. Count to one. That is how long forever feels. --}}
    {{-- Stop trying to control. --}}
    {{-- The whole world belongs to you. --}}

    <div class="container w-full mx-auto pt-02">
        <div class="w-full px-4 md:px-0 md:mt-2 mb-3 text-gray-800 leading-normal">
            <!--begin from here-->
            <!--End of Console content-->
            <!--Console Content-->
            <div class="flex flex-wrap">
                @hasanyrole('herdmanager')
                  @include('livewire.goats.flexwrapAdministration')
                @endhasanyrole
            </div>
            <!-- End of Console Content-->
        
            <!--Divider-->
            <hr class="border-b-2 border-gray-600 my-2 mx-4">
            <!--Divider-->
            <div class="flex flex-row flex-wrap flex-grow mt-2">
                <!-- Left Panel Graph Card-->
                <div class="w-full md:w-full p-3">
                  <div class="bg-orange-100 border border-gray-800 rounded shadow">
                    <div class="border-b border-gray-800 p-3">
                        <h5 class="font-bold uppercase text-gray-900">Activity Groups</h5>
                    </div>
                    <div class="errors">
                        @if (session()->has('formmessage'))
                            <div class="alert alert-success">
                                {{ session('message') }}
                            </div>
                        @endif
                        @if (!empty($lwMessage))
                            <div class="alert alert-success text-center font-bold text-sm uppercase px-6 py-2">
                                {{ $lwMessage }}
                            </div>
                        @endif
                    </div>
                    <div class="p-5">
                        <table class='table-auto  mx-auto w-full whitespace-wrap rounded-lg bg-white divide-y divide-gray-300 overflow-hidden'>
                            <thead class="bg-gray-900">
                                <tr class="text-white text-left">
                                    <th class="font-semibold text-sm uppercase px-6 py-2"> ID</th>
                                    <th class="font-semibold text-sm uppercase px-4 py-2"> Name </th>
                                    <th class="font-semibold text-sm uppercase px-4 py-2"> Description</th>
                                    <th class="font-semibold text-sm uppercase px-4 py-2"> Posted By </th>
                                    <th class="font-semibold text-sm uppercase px-4 py-2"> Date </br> Created </th>
                                    <th class="font-semibold text-sm uppercase px-4 py-2"> Action </th>
                                </tr>
                            </thead>
                            <tbody>
                                @if(count($activities) > 0 )
                                    @foreach($activities as $row)
                                      <tr>
                                        <td class="text-sm text-gray-900 font-medium px-6 py-4">
                                            {{ ucfirst($row->activity_id) }}
                                        </td>
                                        <td class="text-sm text-gray-900 font-medium px-6 py-4">
                                        {{ ucfirst($row->activity) }}
                                        </td>
                                        <td class="text-sm text-gray-900 font-medium px-6 py-4">
                                            {{ ucfirst($row->description) }}
                                        </td>
                                        <td class="text-sm text-gray-900 font-medium px-6 py-4">
                                        {{ ucfirst($row->user->name) }}
                                        </td>
                                        <td class="text-sm text-gray-900 font-medium px-6 py-4">
                                            {{ date('d-m-Y', strtotime($row->created_at)) }}
                                        </td>
                                        <td class="text-sm text-gray-900 font-medium px-6 py-4">
                                            <button wire:click="deleteActivity({{ $row->activity_id }})" class="bg-blue-600 text-white font-normal py-2 px-4 rounded rounded">Delete</button>
                                        </td>
                                      </tr>
                                    @endforeach
                                @else
                                    <tr>
                                      <td class="text-sm text-gray-900">
                                        None to diplay!
                                      </td>
                                    </tr>
                                @endif
                            </tbody>
                        </table>
                        </br>
                        <!--Divider-->
                        <hr class="border-b-2 border-gray-600 my-2 mx-4">
                        <!--Divider-->
                        </br>
                
                        <div class="flex justify-left">
                            <div class="mb-3 xl:w-96">
                                <label class="block text-gray-900 text-lg font-bold mb-2" for="username"> Activity Group </label>
                                <input size="55" class="shadow appearance-none border border-red-500 rounded w-auto py-1 text-gray-700 mb-1 leading-tight focus:outline-none focus:shadow-outline" id="title" wire:model="activit_name" type="text">
                                <label class="error text-orange-900 text-sm font-normal pt-0 mb-0" for="usercode">
                                    @error('activit_name') <span class="error">{{ $message }}</span> @enderror
                                </label>
                            </div>
                        </div>
                
                        <div class="flex justify-left">
                            <div class="mb-3 xl:w-96">
                                <label class="block text-gray-900 text-lg font-bold mb-2" for="username">  Activity Description</label>
                                <input size="55" class="shadow appearance-none border border-red-500 rounded w-auto py-1 text-gray-700 mb-1 leading-tight focus:outline-none focus:shadow-outline" id="versionId" wire:model="activit_desc" type="text">
                                <label class="error text-orange-900 text-sm font-normal pt-0 mb-0" for="usercode">
                                    @error('activit_desc') <span class="error">{{ $message }}</span> @enderror
                                </label>
                            </div>
                        </div>
                
                        </br></br>
                        
                        <label class="block text-gray-900 text-sm font-normal mb-2" for="username">
                            @hasanyrole('pisg|pilg|piblg|pient|investigator|herdmanager')
                              <button wire:click="addNewActivity()" class="bg-blue-500 w-20 hover:bg-blue-800 text-white font-normal py-2 px-2  mx-3 rounded">Add New</button>
                            @endhasanyrole
                        </label>
                
                    </div>
                  </div>
                </div>
            <!--/table Card-->
            </div>
          <!--/ Console Content-->
        <!--end of the block-->
        </div>
    </div>
</div>
