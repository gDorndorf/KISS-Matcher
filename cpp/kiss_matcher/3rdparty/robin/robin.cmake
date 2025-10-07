# MIT License
#
# Copyright (c) 2025 Hyungtae Lim and coauthors.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

# NOTE(hlim) `OFF` means that we gonna generate static library to make it more independent
# Thus, `libpmc.a` will be created
option( PMC_BUILD_SHARED "Build pmc as a shared library (.so)" OFF )

include( FetchContent )
if ( NOT TARGET robin )
	FetchContent_Declare( robin
		GIT_REPOSITORY https://github.com/gDorndorf/ROBIN.git
		GIT_TAG bad81bcbb299809b813bd50c2b57238161e8b630 # Fri Aug 22 [cmake] make include directories portable
		GIT_SHALLOW TRUE
		SYSTEM
		EXCLUDE_FROM_ALL
		GIT_PROGRESS TRUE )
	FetchContent_MakeAvailable( robin )
endif ()
