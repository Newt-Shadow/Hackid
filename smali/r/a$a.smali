.class final Lr/a$a;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lr/a;


# direct methods
.method constructor <init>(Lr/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr/a$a;->a:Lr/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    new-instance v0, Lr/a$d;

    .line 2
    .line 3
    iget-object v1, p0, Lr/a$a;->a:Lr/a;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lr/a$d;-><init>(Lr/a;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lr/a$a;->a:Lr/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lr/i;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
