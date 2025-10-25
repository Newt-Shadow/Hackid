.class public abstract Lg6/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/common/api/a;

.field public static final b:Lg6/a;

.field public static final c:Lg6/c;

.field public static final d:Lg6/e;

.field private static final e:Lcom/google/android/gms/common/api/a$g;

.field private static final f:Lcom/google/android/gms/common/api/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lg6/d;->e:Lcom/google/android/gms/common/api/a$g;

    .line 7
    .line 8
    new-instance v1, Lg6/s;

    .line 9
    .line 10
    invoke-direct {v1}, Lg6/s;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lg6/d;->f:Lcom/google/android/gms/common/api/a$a;

    .line 14
    .line 15
    new-instance v2, Lcom/google/android/gms/common/api/a;

    .line 16
    .line 17
    const-string v3, "LocationServices.API"

    .line 18
    .line 19
    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    .line 20
    .line 21
    .line 22
    sput-object v2, Lg6/d;->a:Lcom/google/android/gms/common/api/a;

    .line 23
    .line 24
    new-instance v0, Ld6/z;

    .line 25
    .line 26
    invoke-direct {v0}, Ld6/z;-><init>()V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lg6/d;->b:Lg6/a;

    .line 30
    .line 31
    new-instance v0, Ld6/d;

    .line 32
    .line 33
    invoke-direct {v0}, Ld6/d;-><init>()V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lg6/d;->c:Lg6/c;

    .line 37
    .line 38
    new-instance v0, Ld6/u;

    .line 39
    .line 40
    invoke-direct {v0}, Ld6/u;-><init>()V

    .line 41
    .line 42
    .line 43
    sput-object v0, Lg6/d;->d:Lg6/e;

    .line 44
    .line 45
    return-void
.end method

.method public static a(Landroid/content/Context;)Lg6/b;
    .locals 1

    .line 1
    new-instance v0, Lg6/b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lg6/b;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
