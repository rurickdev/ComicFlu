class Comic {
  String _folder;
  String _path;
  String _title;
  String _cover;
  String _releaseDate = 'Unknown';
  double _progress = 0;
  int _issue;
  int _pages;

  Comic(
    this._folder,
    this._path,
    this._title,
    this._cover,
    this._issue,
    this._pages,
  );

  String get folder => this._folder;
  String get path => this._path;
  String get title => this._title;
  String get cover => this._cover;
  String get releaseDate => this._releaseDate;
  double get progress => this._progress;
  int get issue => this._issue;
  int get pages => this._pages;

  set releaseDate(String newDate) {
    this._releaseDate = newDate;
  }

  set progress(double newProgress) {
    this._progress = newProgress;
  }
}
