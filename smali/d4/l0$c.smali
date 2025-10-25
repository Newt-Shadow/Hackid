.class final Ld4/l0$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld4/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field public final a:Lb3/x1;

.field public final b:Lf3/v$b;


# direct methods
.method private constructor <init>(Lb3/x1;Lf3/v$b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Ld4/l0$c;->a:Lb3/x1;

    .line 4
    iput-object p2, p0, Ld4/l0$c;->b:Lf3/v$b;

    return-void
.end method

.method synthetic constructor <init>(Lb3/x1;Lf3/v$b;Ld4/l0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ld4/l0$c;-><init>(Lb3/x1;Lf3/v$b;)V

    return-void
.end method
