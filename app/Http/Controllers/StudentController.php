<?php

namespace App\Http\Controllers;

use App\Models\AcademyClass;
use App\Models\Section;
use App\Models\Stopage;
use App\Models\Student;
use Illuminate\Http\Request;

class StudentController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $classes  = AcademyClass::all();
        $sections = Section::all();
        $stopages = Stopage::all();
        return view("admin.students.create", compact("classes", "sections", "stopages"));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // // Validate the incoming request data
        // $validatedData = $request->validate([
        //     'student_image' => 'nullable|image|mimes:jpeg,png',
        //     'student_id' => 'required|unique:students,student_id',
        //     'roll' => 'required|string',
        //     'student_name' => 'required|string',
        //     'father_name' => 'required|string',
        //     'mother_name' => 'required|string',
        //     'address' => 'required|string',
        //     'phone1' => 'required|string',
        //     'phone2' => 'nullable|string',
        //     'gender' => 'required|in:male,female',
        //     'dob' => 'required|date',
        //     'remarks' => 'nullable|string',
        // ]);

        // Create a new student record
        $student = new Student();
        // Handle image upload
        if ($request->hasFile('student_image')) {
            $student->student_image = $request->file('student_image')->store('public/images');
        }

        $student->student_id = $request->student_id;
        $student->roll = $request->roll;
        $student->student_name = $request->student_name;
        $student->father_name = $request->father_name;
        $student->mother_name = $request->mother_name;
        $student->address = $request->address;
        $student->phone1 = $request->phone1;
        $student->phone2 = $request->phone2;
        $student->gender = $request->gender;
        $student->dob = $request->dob;
        $student->remarks = $request->remarks;
        $student->academy_class_id = $request->class_id;
        $student->section_id = $request->section_id;
        // Save the student record
        $student->save();

        // Optionally, you can redirect to a success page or return a response
        return redirect()->route('students.index')->with('success', 'Student record created successfully!');
    }

    /**
     * Display the specified resource.
     */
    public function show(Student $student)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Student $student)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Student $student)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Student $student)
    {
        //
    }
}
