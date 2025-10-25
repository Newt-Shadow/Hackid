.class public final Ltd/f2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltd/a1;
.implements Ltd/s;


# static fields
.field public static final a:Ltd/f2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ltd/f2;

    invoke-direct {v0}, Ltd/f2;-><init>()V

    sput-object v0, Ltd/f2;->a:Ltd/f2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public dispose()V
    .locals 0

    .line 1
    return-void
.end method

.method public getParent()Ltd/t1;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "NonDisposableHandle"

    return-object v0
.end method
