.class public final Lne/z$a$a;
.super Lne/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lne/z$a;->a([BLne/v;II)Lne/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lne/v;

.field final synthetic c:I

.field final synthetic d:[B

.field final synthetic e:I


# direct methods
.method constructor <init>(Lne/v;I[BI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lne/z$a$a;->b:Lne/v;

    .line 2
    .line 3
    iput p2, p0, Lne/z$a$a;->c:I

    .line 4
    .line 5
    iput-object p3, p0, Lne/z$a$a;->d:[B

    .line 6
    .line 7
    iput p4, p0, Lne/z$a$a;->e:I

    .line 8
    .line 9
    invoke-direct {p0}, Lne/z;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget v0, p0, Lne/z$a$a;->c:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    return-wide v0
.end method

.method public b()Lne/v;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/z$a$a;->b:Lne/v;

    .line 2
    .line 3
    return-object v0
.end method

.method public e(Laf/e;)V
    .locals 3

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lne/z$a$a;->d:[B

    .line 7
    .line 8
    iget v1, p0, Lne/z$a$a;->e:I

    .line 9
    .line 10
    iget v2, p0, Lne/z$a$a;->c:I

    .line 11
    .line 12
    invoke-interface {p1, v0, v1, v2}, Laf/e;->l0([BII)Laf/e;

    .line 13
    .line 14
    .line 15
    return-void
.end method
