.class public final Lio/flutter/plugins/sharedpreferences/SharedPreferencesPluginKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $$delegatedProperties:[Lpd/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lpd/k;"
        }
    .end annotation
.end field

.field public static final DOUBLE_PREFIX:Ljava/lang/String; = "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBEb3VibGUu"

.field public static final JSON_LIST_PREFIX:Ljava/lang/String; = "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBhIGxpc3Qu!"

.field public static final LIST_PREFIX:Ljava/lang/String; = "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBhIGxpc3Qu"

.field public static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "FlutterSharedPreferences"

.field public static final TAG:Ljava/lang/String; = "SharedPreferencesPlugin"

.field private static final sharedPreferencesDataStore$delegate:Lld/c;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Lpd/k;

    .line 3
    .line 4
    new-instance v2, Lkotlin/jvm/internal/v;

    .line 5
    .line 6
    const-string v3, "sharedPreferencesDataStore"

    .line 7
    .line 8
    const-string v4, "getSharedPreferencesDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;"

    .line 9
    .line 10
    const-class v5, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPluginKt;

    .line 11
    .line 12
    invoke-direct {v2, v5, v3, v4, v0}, Lkotlin/jvm/internal/v;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    invoke-static {v2}, Lkotlin/jvm/internal/d0;->f(Lkotlin/jvm/internal/u;)Lpd/i;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v2, 0x0

    .line 20
    aput-object v0, v1, v2

    .line 21
    .line 22
    sput-object v1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPluginKt;->$$delegatedProperties:[Lpd/k;

    .line 23
    .line 24
    const-string v3, "FlutterSharedPreferences"

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v6, 0x0

    .line 29
    const/16 v7, 0xe

    .line 30
    .line 31
    const/4 v8, 0x0

    .line 32
    invoke-static/range {v3 .. v8}, Ln0/a;->b(Ljava/lang/String;Lk0/b;Lid/l;Ltd/l0;ILjava/lang/Object;)Lld/c;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sput-object v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPluginKt;->sharedPreferencesDataStore$delegate:Lld/c;

    .line 37
    .line 38
    return-void
.end method

.method public static final getSharedPreferencesDataStore(Landroid/content/Context;)Lj0/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lj0/i;"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPluginKt;->sharedPreferencesDataStore$delegate:Lld/c;

    .line 7
    .line 8
    sget-object v1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPluginKt;->$$delegatedProperties:[Lpd/k;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    aget-object v1, v1, v2

    .line 12
    .line 13
    invoke-interface {v0, p0, v1}, Lld/c;->a(Ljava/lang/Object;Lpd/k;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lj0/i;

    .line 18
    .line 19
    return-object p0
.end method

.method public static final preferencesFilter(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p2, :cond_2

    .line 7
    .line 8
    instance-of p0, p1, Ljava/lang/Boolean;

    .line 9
    .line 10
    if-nez p0, :cond_1

    .line 11
    .line 12
    instance-of p0, p1, Ljava/lang/Long;

    .line 13
    .line 14
    if-nez p0, :cond_1

    .line 15
    .line 16
    instance-of p0, p1, Ljava/lang/String;

    .line 17
    .line 18
    if-nez p0, :cond_1

    .line 19
    .line 20
    instance-of p0, p1, Ljava/lang/Double;

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 28
    :goto_1
    return p0

    .line 29
    :cond_2
    invoke-interface {p2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0
.end method

.method public static final transformPref(Ljava/lang/Object;Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;)Ljava/lang/Object;
    .locals 7

    .line 1
    const-string v0, "listEncoder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p0, Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    move-object v0, p0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBhIGxpc3Qu"

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x2

    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-static {v0, v1, v2, v3, v4}, Lrd/n;->H(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const-string v5, "substring(...)"

    .line 23
    .line 24
    const/16 v6, 0x28

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    const-string v1, "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBhIGxpc3Qu!"

    .line 29
    .line 30
    invoke-static {v0, v1, v2, v3, v4}, Lrd/n;->H(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {p0, v5}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {p1, p0}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;->decode(Ljava/lang/String;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {p0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-object p0

    .line 52
    :cond_1
    const-string p1, "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBEb3VibGUu"

    .line 53
    .line 54
    invoke-static {v0, p1, v2, v3, v4}, Lrd/n;->H(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-static {p0, v5}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 68
    .line 69
    .line 70
    move-result-wide p0

    .line 71
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    :cond_2
    return-object p0
.end method
