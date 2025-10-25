.class public final synthetic Lyc/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid/l;


# instance fields
.field public final synthetic a:Lyc/b;


# direct methods
.method public synthetic constructor <init>(Lyc/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyc/a;->a:Lyc/b;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lyc/a;->a:Lyc/b;

    invoke-static {v0, p1}, Lyc/b;->g(Lyc/b;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
