.class public Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;
.super Ljava/lang/Object;
.source "GifEditLayout.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/gif/GifEditLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GifTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/features/gif/GifEditLayout;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/gif/GifEditLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 9

    const-string v0, "\n"

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v1}, Lcom/android/camera/features/gif/GifEditLayout;->access$000(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/AdaptiveEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v1}, Lcom/android/camera/features/gif/GifEditLayout;->access$000(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/AdaptiveEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x10

    const-string v4, "GBK"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_7

    :try_start_1
    array-length v7, v2

    const/4 v8, 0x2

    if-ge v7, v8, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v1}, Lcom/android/camera/features/gif/GifEditLayout;->access$200(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v7}, Lcom/android/camera/features/gif/GifEditLayout;->access$200(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v5, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v1}, Lcom/android/camera/features/gif/GifEditLayout;->access$200(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v7, v2, v5

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v2, v5

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    if-le v1, v3, :cond_4

    iget-object v7, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    aget-object v8, v2, v5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/camera/features/gif/GifEditLayout;->access$302(Lcom/android/camera/features/gif/GifEditLayout;I)I

    :goto_1
    if-le v1, v3, :cond_3

    aget-object v1, v2, v5

    aget-object v7, v2, v5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v5

    aget-object v1, v2, v5

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    iget-object v7, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v7}, Lcom/android/camera/features/gif/GifEditLayout;->access$200(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v8}, Lcom/android/camera/features/gif/GifEditLayout;->access$200(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v1}, Lcom/android/camera/features/gif/GifEditLayout;->access$200(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v2, v6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v0}, Lcom/android/camera/features/gif/GifEditLayout;->access$200(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v1}, Lcom/android/camera/features/gif/GifEditLayout;->access$100(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/LimitInputEditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v1}, Lcom/android/camera/features/gif/GifEditLayout;->access$000(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/AdaptiveEditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v1}, Lcom/android/camera/features/gif/GifEditLayout;->access$100(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/LimitInputEditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_6

    :cond_4
    aget-object v1, v2, v6

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    iget-object v7, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v7}, Lcom/android/camera/features/gif/GifEditLayout;->access$200(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v1, v3, :cond_6

    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    aget-object v7, v2, v6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v0, v7}, Lcom/android/camera/features/gif/GifEditLayout;->access$302(Lcom/android/camera/features/gif/GifEditLayout;I)I

    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v0}, Lcom/android/camera/features/gif/GifEditLayout;->access$200(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v7, v2, v6

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    if-le v1, v3, :cond_5

    aget-object v0, v2, v6

    aget-object v1, v2, v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    aget-object v0, v2, v6

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v0}, Lcom/android/camera/features/gif/GifEditLayout;->access$200(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v7}, Lcom/android/camera/features/gif/GifEditLayout;->access$200(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v0}, Lcom/android/camera/features/gif/GifEditLayout;->access$200(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v1}, Lcom/android/camera/features/gif/GifEditLayout;->access$100(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/LimitInputEditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v1}, Lcom/android/camera/features/gif/GifEditLayout;->access$000(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/AdaptiveEditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v1}, Lcom/android/camera/features/gif/GifEditLayout;->access$100(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/LimitInputEditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_6

    :cond_6
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v0}, Lcom/android/camera/features/gif/GifEditLayout;->access$200(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v2, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v0}, Lcom/android/camera/features/gif/GifEditLayout;->access$200(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v1}, Lcom/android/camera/features/gif/GifEditLayout;->access$000(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/AdaptiveEditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v1}, Lcom/android/camera/features/gif/GifEditLayout;->access$100(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/LimitInputEditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_6

    :cond_7
    :goto_3
    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    const/16 v7, 0x20

    if-le v2, v7, :cond_9

    :goto_4
    if-le v2, v7, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v2, v0

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v0}, Lcom/android/camera/features/gif/GifEditLayout;->access$100(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/LimitInputEditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_9
    if-le v2, v3, :cond_b

    iget-object v7, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v7}, Lcom/android/camera/features/gif/GifEditLayout;->access$200(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v8}, Lcom/android/camera/features/gif/GifEditLayout;->access$200(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v7, v5, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/camera/features/gif/GifEditLayout;->access$302(Lcom/android/camera/features/gif/GifEditLayout;I)I

    iget-object v7, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v7}, Lcom/android/camera/features/gif/GifEditLayout;->access$200(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    if-le v2, v3, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v6

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    iget-object v7, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v7}, Lcom/android/camera/features/gif/GifEditLayout;->access$310(Lcom/android/camera/features/gif/GifEditLayout;)I

    goto :goto_5

    :cond_a
    iget-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v1}, Lcom/android/camera/features/gif/GifEditLayout;->access$200(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v2}, Lcom/android/camera/features/gif/GifEditLayout;->access$300(Lcom/android/camera/features/gif/GifEditLayout;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v0}, Lcom/android/camera/features/gif/GifEditLayout;->access$200(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v1}, Lcom/android/camera/features/gif/GifEditLayout;->access$100(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/LimitInputEditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_b
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v0}, Lcom/android/camera/features/gif/GifEditLayout;->access$000(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/AdaptiveEditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v0}, Lcom/android/camera/features/gif/GifEditLayout;->access$100(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/LimitInputEditText;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :goto_6
    iget-object p0, p0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;->this$0:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-nez p1, :cond_c

    move v5, v6

    :cond_c
    invoke-static {p0, v5}, Lcom/android/camera/features/gif/GifEditLayout;->access$400(Lcom/android/camera/features/gif/GifEditLayout;Z)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_7
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "beforeTextChanged: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "gif"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onTextChanged: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "gif"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
