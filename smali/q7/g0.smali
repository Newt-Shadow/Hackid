.class public abstract Lq7/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lt7/f0;Ljava/lang/String;Ljava/io/File;)Lq7/g0;
    .locals 1

    .line 1
    new-instance v0, Lq7/c;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lq7/c;-><init>(Lt7/f0;Ljava/lang/String;Ljava/io/File;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract b()Lt7/f0;
.end method

.method public abstract c()Ljava/io/File;
.end method

.method public abstract d()Ljava/lang/String;
.end method
