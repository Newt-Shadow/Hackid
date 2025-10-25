.class Ld0/c1$d;
.super Ld0/c1$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld0/c1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld0/c1$c;-><init>()V

    return-void
.end method

.method constructor <init>(Ld0/c1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ld0/c1$c;-><init>(Ld0/c1;)V

    return-void
.end method
