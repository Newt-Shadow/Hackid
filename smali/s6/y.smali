.class public final Ls6/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ls6/y;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls6/y;

    .line 2
    .line 3
    invoke-direct {v0}, Ls6/y;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ls6/y;->a:Ls6/y;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Ls6/y;
    .locals 1

    .line 1
    sget-object v0, Ls6/y;->a:Ls6/y;

    .line 2
    .line 3
    return-object v0
.end method

.method public static b(Ls6/y;)Ls6/y;
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 5
    .line 6
    const-string v0, "SecretKeyAccess is required"

    .line 7
    .line 8
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw p0
.end method
