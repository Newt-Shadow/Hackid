.class public final synthetic Lj0/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltd/a1;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lid/l;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lid/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj0/z;->a:Ljava/lang/String;

    iput-object p2, p0, Lj0/z;->b:Lid/l;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 2

    .line 1
    iget-object v0, p0, Lj0/z;->a:Ljava/lang/String;

    iget-object v1, p0, Lj0/z;->b:Lid/l;

    invoke-static {v0, v1}, Lj0/a0$a;->a(Ljava/lang/String;Lid/l;)V

    return-void
.end method
