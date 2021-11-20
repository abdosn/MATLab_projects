function generate_morse_code (fs,f,wpm,txt_file_name )

data=[];
time=[];

text = fileread(txt_file_name);

for i=1:length(text);
    
    [data,time] = letters (data , time , fs ,f ,wpm ,text(i) );
end



audiowrite('generated_morse_code.wav',data,fs);

figure('Name' , 'generated morse wave');
plot(time,data);
xlabel('Time(sec)');

end