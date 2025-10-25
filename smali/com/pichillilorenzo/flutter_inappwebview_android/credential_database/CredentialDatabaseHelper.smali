.class public Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/CredentialDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field private static final SQL_CREATE_CREDENTIAL_TABLE:Ljava/lang/String; = "CREATE TABLE credential (_id INTEGER PRIMARY KEY,username TEXT NOT NULL,password TEXT NOT NULL,protection_space_id INTEGER NOT NULL,UNIQUE(username, password, protection_space_id),FOREIGN KEY (protection_space_id) REFERENCES protection_space (_id) ON DELETE CASCADE);"

.field private static final SQL_CREATE_PROTECTION_SPACE_TABLE:Ljava/lang/String; = "CREATE TABLE protection_space (_id INTEGER PRIMARY KEY,host TEXT NOT NULL,protocol TEXT,realm TEXT,port INTEGER,UNIQUE(host, protocol, realm, port));"

.field private static final SQL_DELETE_CREDENTIAL_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS credential"

.field private static final SQL_DELETE_PROTECTION_SPACE_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS protection_space"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const-string v2, "CredentialDatabase.db"

    .line 4
    .line 5
    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public clearAllTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    const-string v0, "DROP TABLE IF EXISTS protection_space"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "DROP TABLE IF EXISTS credential"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/CredentialDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    const-string v0, "CREATE TABLE protection_space (_id INTEGER PRIMARY KEY,host TEXT NOT NULL,protocol TEXT,realm TEXT,port INTEGER,UNIQUE(host, protocol, realm, port));"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "CREATE TABLE credential (_id INTEGER PRIMARY KEY,username TEXT NOT NULL,password TEXT NOT NULL,protection_space_id INTEGER NOT NULL,UNIQUE(username, password, protection_space_id),FOREIGN KEY (protection_space_id) REFERENCES protection_space (_id) ON DELETE CASCADE);"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/CredentialDatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    const-string p2, "DROP TABLE IF EXISTS protection_space"

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "DROP TABLE IF EXISTS credential"

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/CredentialDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
