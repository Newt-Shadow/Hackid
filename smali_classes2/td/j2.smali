.class final Ltd/j2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ltd/i0;

.field private final b:Ltd/l;


# direct methods
.method public constructor <init>(Ltd/i0;Ltd/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ltd/j2;->a:Ltd/i0;

    .line 5
    .line 6
    iput-object p2, p0, Ltd/j2;->b:Ltd/l;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ltd/j2;->b:Ltd/l;

    .line 2
    .line 3
    iget-object v1, p0, Ltd/j2;->a:Ltd/i0;

    .line 4
    .line 5
    sget-object v2, Lxc/t;->a:Lxc/t;

    .line 6
    .line 7
    invoke-interface {v0, v1, v2}, Ltd/l;->i(Ltd/i0;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
