.class public final Lve/f$d$c;
.super Lre/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lve/f$d;->f(ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Z

.field final synthetic g:Lve/f;

.field final synthetic h:I

.field final synthetic i:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLve/f;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lve/f$d$c;->e:Ljava/lang/String;

    .line 2
    .line 3
    iput-boolean p2, p0, Lve/f$d$c;->f:Z

    .line 4
    .line 5
    iput-object p3, p0, Lve/f$d$c;->g:Lve/f;

    .line 6
    .line 7
    iput p4, p0, Lve/f$d$c;->h:I

    .line 8
    .line 9
    iput p5, p0, Lve/f$d$c;->i:I

    .line 10
    .line 11
    invoke-direct {p0, p1, p2}, Lre/a;-><init>(Ljava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public f()J
    .locals 4

    .line 1
    iget-object v0, p0, Lve/f$d$c;->g:Lve/f;

    .line 2
    .line 3
    iget v1, p0, Lve/f$d$c;->h:I

    .line 4
    .line 5
    iget v2, p0, Lve/f$d$c;->i:I

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-virtual {v0, v3, v1, v2}, Lve/f;->q1(ZII)V

    .line 9
    .line 10
    .line 11
    const-wide/16 v0, -0x1

    .line 12
    .line 13
    return-wide v0
.end method
