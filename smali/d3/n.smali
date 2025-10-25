.class public final synthetic Ld3/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ld3/v$a;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Ld3/v$a;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld3/n;->a:Ld3/v$a;

    iput-wide p2, p0, Ld3/n;->b:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ld3/n;->a:Ld3/v$a;

    iget-wide v1, p0, Ld3/n;->b:J

    invoke-static {v0, v1, v2}, Ld3/v$a;->h(Ld3/v$a;J)V

    return-void
.end method
