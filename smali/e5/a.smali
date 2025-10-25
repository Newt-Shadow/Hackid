.class public abstract Le5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/common/api/a;

.field public static final b:Lcom/google/android/gms/common/api/a;

.field public static final c:Lg5/a;

.field public static final d:Lh5/a;

.field public static final e:Lcom/google/android/gms/common/api/a$g;

.field public static final f:Lcom/google/android/gms/common/api/a$g;

.field private static final g:Lcom/google/android/gms/common/api/a$a;

.field private static final h:Lcom/google/android/gms/common/api/a$a;

.field public static final i:Lcom/google/android/gms/common/api/a;

.field public static final j:Ly5/e;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Le5/a;->e:Lcom/google/android/gms/common/api/a$g;

    .line 7
    .line 8
    new-instance v1, Lcom/google/android/gms/common/api/a$g;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Le5/a;->f:Lcom/google/android/gms/common/api/a$g;

    .line 14
    .line 15
    new-instance v2, Le5/d;

    .line 16
    .line 17
    invoke-direct {v2}, Le5/d;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v2, Le5/a;->g:Lcom/google/android/gms/common/api/a$a;

    .line 21
    .line 22
    new-instance v3, Le5/e;

    .line 23
    .line 24
    invoke-direct {v3}, Le5/e;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v3, Le5/a;->h:Lcom/google/android/gms/common/api/a$a;

    .line 28
    .line 29
    sget-object v4, Le5/b;->a:Lcom/google/android/gms/common/api/a;

    .line 30
    .line 31
    sput-object v4, Le5/a;->a:Lcom/google/android/gms/common/api/a;

    .line 32
    .line 33
    new-instance v4, Lcom/google/android/gms/common/api/a;

    .line 34
    .line 35
    const-string v5, "Auth.CREDENTIALS_API"

    .line 36
    .line 37
    invoke-direct {v4, v5, v2, v0}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    .line 38
    .line 39
    .line 40
    sput-object v4, Le5/a;->i:Lcom/google/android/gms/common/api/a;

    .line 41
    .line 42
    new-instance v0, Lcom/google/android/gms/common/api/a;

    .line 43
    .line 44
    const-string v2, "Auth.GOOGLE_SIGN_IN_API"

    .line 45
    .line 46
    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Le5/a;->b:Lcom/google/android/gms/common/api/a;

    .line 50
    .line 51
    sget-object v0, Le5/b;->b:Lg5/a;

    .line 52
    .line 53
    sput-object v0, Le5/a;->c:Lg5/a;

    .line 54
    .line 55
    new-instance v0, Ly5/e;

    .line 56
    .line 57
    invoke-direct {v0}, Ly5/e;-><init>()V

    .line 58
    .line 59
    .line 60
    sput-object v0, Le5/a;->j:Ly5/e;

    .line 61
    .line 62
    new-instance v0, Li5/h;

    .line 63
    .line 64
    invoke-direct {v0}, Li5/h;-><init>()V

    .line 65
    .line 66
    .line 67
    sput-object v0, Le5/a;->d:Lh5/a;

    .line 68
    .line 69
    return-void
.end method
