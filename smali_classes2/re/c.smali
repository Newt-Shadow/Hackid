.class public final Lre/c;
.super Lre/a;
.source "SourceFile"


# instance fields
.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Z

.field final synthetic g:Lid/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLid/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lre/c;->e:Ljava/lang/String;

    .line 2
    .line 3
    iput-boolean p2, p0, Lre/c;->f:Z

    .line 4
    .line 5
    iput-object p3, p0, Lre/c;->g:Lid/a;

    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Lre/a;-><init>(Ljava/lang/String;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public f()J
    .locals 2

    .line 1
    iget-object v0, p0, Lre/c;->g:Lid/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lid/a;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, -0x1

    .line 7
    .line 8
    return-wide v0
.end method
