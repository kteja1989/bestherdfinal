<div
    class="fixed bottom-0 inset-x-0 px-4 pb-6 sm:inset-0 sm:p-0 sm:flex sm:items-center sm:justify-center"
    wire:click.stop="">

    <div class="fixed inset-0 transition-opacity" wire:click.stop="closeEventDetailsModal">
        <div class="absolute inset-0 bg-gray-500 opacity-75"></div>
    </div>

    <div class="bg-white rounded-lg px-4 pt-5 pb-4 overflow-hidden shadow-xl transform transition-all sm:max-w-lg sm:w-full sm:p-6"
         role="dialog"
         aria-modal="true"
         aria-labelledby="modal-headline">

        <h1 class="text-indigo-600 text-xl font-medium">
            Event Details
        </h1>

        <div class="grid grid-cols-1 row-gap-6 col-gap-4 sm:grid-cols-6 mt-4">
            <div class="sm:col-span-6">
                <label for="first_name" class="block text-sm font-medium leading-5 text-gray-700">
                    Title
                </label>
                <div class="mt-1 rounded-md shadow-sm">
                    <input
                        disabled
                        value="{{ $selectedEvent['title'] }}"
                        class="border rounded p-2 block w-full sm:text-sm sm:leading-5"
                        placeholder="What's the Event about?"
                    />
                </div>
            </div>

            <div class="sm:col-span-6">
                <label for="about" class="block text-sm font-medium leading-5 text-gray-700">
                    Notes
                </label>
                <div class="mt-1 rounded-md shadow-sm">
                    <textarea
                        disabled
                        rows="3"
                        placeholder="Details regarding the Event"
                        class="border rounded p-2 block w-full transition duration-150 ease-in-out sm:text-sm sm:leading-5"
                    >{{ $selectedEvent['description'] }}</textarea>
                </div>
            </div>

            <div class="sm:col-span-3">
                <label for="first_name" class="block text-sm font-medium leading-5 text-gray-700">
                    Scheduled At
                </label>
                <div class="mt-1 rounded-md shadow-sm">
                    <input
                        disabled
                        value="{{ $selectedEvent['start_date']->format('Y-m-d') }}"
                        class="border rounded p-2 block w-full sm:text-sm sm:leading-5"
                        placeholder="What's the Event about?"
                    />
                </div>
            </div>

            <div class="sm:col-span-3">
                <label for="first_name" class="block text-sm font-medium leading-5 text-gray-700">
                    Priority
                </label>
                <div class="mt-1 rounded-md shadow-sm">
                    <input
                        disabled
                        value="{{ ucfirst($selectedEvent['priority']) }}"
                        class="border rounded p-2 block w-full sm:text-sm sm:leading-5"
                        placeholder="What's the Event about?"
                    />
                </div>
            </div>
        </div>

        <div class="mt-5 sm:mt-6 sm:grid sm:grid-cols-2 sm:gap-3 sm:grid-flow-row-dense">
            <div class="flex w-full rounded-md shadow-sm sm:col-start-2">
                <button
                    type="button"
                    wire:click.stop="unscheduleEvent"
                    class="inline-flex justify-center w-full rounded-md border border-transparent px-4 py-2 bg-red-600 text-base leading-6 font-medium text-white shadow-sm hover:bg-red-500 focus:outline-none focus:border-red-700 focus:shadow-outline-red transition ease-in-out duration-150 sm:text-sm sm:leading-5">
                    Unschedule
                </button>
            </div>
            <div class="mt-3 flex w-full rounded-md shadow-sm sm:mt-0 sm:col-start-1">
                <button
                    type="button"
                    wire:click.stop="closeEventDetailsModal"
                    class="inline-flex justify-center w-full rounded-md border border-gray-300 px-4 py-2 bg-white text-base leading-6 font-medium text-gray-700 shadow-sm hover:text-gray-500 focus:outline-none focus:border-blue-300 focus:shadow-outline-blue transition ease-in-out duration-150 sm:text-sm sm:leading-5">
                    Cancel
                </button>
            </div>
        </div>
    </div>
</div>