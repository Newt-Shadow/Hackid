.class public Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/CredentialDatabase;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "CredentialDatabase.db"

.field public static final DATABASE_VERSION:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "CredentialDatabase"

.field private static instance:Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/CredentialDatabase;


# instance fields
.field public credentialDao:Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/URLCredentialDao;

.field public db:Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/CredentialDatabaseHelper;

.field public protectionSpaceDao:Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/URLProtectionSpaceDao;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/CredentialDatabaseHelper;Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/URLProtectionSpaceDao;Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/URLCredentialDao;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/CredentialDatabase;->db:Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/CredentialDatabaseHelper;

    .line 3
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/CredentialDatabase;->protectionSpaceDao:Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/URLProtectionSpaceDao;

    .line 4
    iput-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/CredentialDatabase;->credentialDao:Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/URLCredentialDao;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/CredentialDatabase;
    .locals 3

    .line 1
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/CredentialDatabase;->instance:Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/CredentialDatabase;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/CredentialDatabaseHelper;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/CredentialDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    new-instance p0, Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/CredentialDatabase;

    .line 12
    .line 13
    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/URLProtectionSpaceDao;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/URLProtectionSpaceDao;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/CredentialDatabaseHelper;)V

    .line 16
    .line 17
    .line 18
    new-instance v2, Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/URLCredentialDao;

    .line 19
    .line 20
    invoke-direct {v2, v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/URLCredentialDao;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/CredentialDatabaseHelper;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, v0, v1, v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/CredentialDatabase;-><init>(Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/CredentialDatabaseHelper;Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/URLProtectionSpaceDao;Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/URLCredentialDao;)V

    .line 24
    .line 25
    .line 26
    sput-object p0, Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/CredentialDatabase;->instance:Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/CredentialDatabase;

    .line 27
    .line 28
    return-object p0
.end method


# virtual methods
.method public clearAllAuthCredentials()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/CredentialDatabase;->db:Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/CredentialDatabaseHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/CredentialDatabaseHelper;->clearAllTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public getHttpAuthCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLCredential;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/CredentialDatabase;->protectionSpaceDao:Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/URLProtectionSpaceDao;

    .line 7
    .line 8
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/URLProtectionSpaceDao;->find(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/CredentialDatabase;->credentialDao:Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/URLCredentialDao;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->getId()Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p2, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/URLCredentialDao;->getAllByProtectionSpaceId(Ljava/lang/Long;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_0
    return-object v0
.end method

.method public removeHttpAuthCredential(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/CredentialDatabase;->protectionSpaceDao:Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/URLProtectionSpaceDao;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/URLProtectionSpaceDao;->find(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/CredentialDatabase;->credentialDao:Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/URLCredentialDao;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->getId()Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p2, p5, p6, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/URLCredentialDao;->find(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLCredential;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/CredentialDatabase;->credentialDao:Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/URLCredentialDao;

    .line 20
    .line 21
    invoke-virtual {p2, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/URLCredentialDao;->delete(Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLCredential;)J

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public removeHttpAuthCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/CredentialDatabase;->protectionSpaceDao:Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/URLProtectionSpaceDao;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/URLProtectionSpaceDao;->find(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/CredentialDatabase;->protectionSpaceDao:Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/URLProtectionSpaceDao;

    .line 10
    .line 11
    invoke-virtual {p2, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/URLProtectionSpaceDao;->delete(Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;)J

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setHttpAuthCredential(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/CredentialDatabase;->protectionSpaceDao:Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/URLProtectionSpaceDao;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/URLProtectionSpaceDao;->find(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/CredentialDatabase;->protectionSpaceDao:Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/URLProtectionSpaceDao;

    .line 10
    .line 11
    new-instance v7, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    move-object v1, v7

    .line 19
    move-object v3, p1

    .line 20
    move-object v4, p2

    .line 21
    move-object v5, p3

    .line 22
    invoke-direct/range {v1 .. v6}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v7}, Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/URLProtectionSpaceDao;->insert(Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;)J

    .line 26
    .line 27
    .line 28
    move-result-wide p1

    .line 29
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLProtectionSpace;->getId()Ljava/lang/Long;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    :goto_0
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/CredentialDatabase;->credentialDao:Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/URLCredentialDao;

    .line 39
    .line 40
    invoke-virtual {p2, p5, p6, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/URLCredentialDao;->find(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLCredential;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    if-eqz p2, :cond_3

    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLCredential;->getUsername()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    const/4 p3, 0x1

    .line 55
    if-nez p1, :cond_1

    .line 56
    .line 57
    invoke-virtual {p2, p5}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLCredential;->setUsername(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    move p1, p3

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    const/4 p1, 0x0

    .line 63
    :goto_1
    invoke-virtual {p2}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLCredential;->getPassword()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p4

    .line 67
    invoke-virtual {p4, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p4

    .line 71
    if-nez p4, :cond_2

    .line 72
    .line 73
    invoke-virtual {p2, p6}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLCredential;->setPassword(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_2
    move p3, p1

    .line 78
    :goto_2
    if-eqz p3, :cond_4

    .line 79
    .line 80
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/CredentialDatabase;->credentialDao:Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/URLCredentialDao;

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/URLCredentialDao;->update(Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLCredential;)J

    .line 83
    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_3
    new-instance p2, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLCredential;

    .line 87
    .line 88
    const/4 p3, 0x0

    .line 89
    invoke-direct {p2, p3, p5, p6, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLCredential;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/CredentialDatabase;->credentialDao:Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/URLCredentialDao;

    .line 93
    .line 94
    invoke-virtual {p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview_android/credential_database/URLCredentialDao;->insert(Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLCredential;)J

    .line 95
    .line 96
    .line 97
    move-result-wide p3

    .line 98
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p2, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/URLCredential;->setId(Ljava/lang/Long;)V

    .line 103
    .line 104
    .line 105
    :cond_4
    :goto_3
    return-void
.end method
