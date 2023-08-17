using AstariteEditor.Resource;
using AstariteEditor.Utilities;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Runtime.Serialization;

namespace AstariteEditor.GameProject
{
    [DataContract]
    public class ProjectTemplate
    {
        [DataMember]
        public string? ProjectType { get; set; }
        [DataMember]
        public string? ProjectFile { get; set; }
        [DataMember]
        public List<string>? Folders { get; set; }

    }

    class NewProject : ViewModelBase
    {
        //TODO: Get the path from the installation location
        private readonly string _templatePath = @"..\..\AstariteEditor\ProjectTemplates";
        private string _name = StringResource.DefaultProjectName;
        public string Name
        {
            get => _name;
            set
            {
                if (_name != value)
                {
                    _name = value;
                    OnPropertyChanged(nameof(Name));
                }
            }
        }


        private string _path = $@"{Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments)}\AstariteProject\";
        public string Path
        {
            get => _path;
            set
            {
                if (_path != value)
                {
                    _path = value;
                    OnPropertyChanged(nameof(Path));
                }
            }
        }

        public NewProject()
        {
            try
            {
                var templatesFiles = Directory.GetFiles(_templatePath, "template.xml", SearchOption.AllDirectories);
                Debug.Assert(templatesFiles.Any());
                foreach (var templatesFile in templatesFiles)
                {
                    var template = new ProjectTemplate()
                    {
                        ProjectType = "Empty Project",
                        ProjectFile = "project.astarite",
                        Folders = new List<string> { ".Astarite", "Content", "GameCode" }
                    };

                    Serializer.ToFile(template, templatesFile);
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.Message);
                //TODO: Log error
            }

        }
    }
}
